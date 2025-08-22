// bindings/py_module.cpp
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

#include "IR2Vec.h"
#include "utils.h"
#include "version.h"

#include <fstream>
#include <ios>
#include <stdio.h>

namespace py = pybind11;

bool fileNotValid(std::string filename) {
  std::ifstream temp;
  temp.open(filename, std::ios_base::in);
  if (temp.peek() == std::ifstream::traits_type::eof() || temp.bad() == true ||
      temp.fail() == true) {
    return true;
  }
  temp.close();
  return false;
}

class IR2VecHandler {
private:
  std::string fileName;
  std::string outputFile;
  std::string mode;
  std::string level;
  std::unique_ptr<IR2Vec::Embeddings> emb;
  unsigned dim = 300;

public:
  IR2VecHandler(std::string fileName, std::string outputFile, std::string mode,
                std::string level, unsigned dim)
      : fileName(std::move(fileName)), outputFile(std::move(outputFile)),
        mode(std::move(mode)), level(std::move(level)),
        emb(std::make_unique<IR2Vec::Embeddings>()), dim(dim) {}

  ~IR2VecHandler() = default;
  IR2VecHandler(const IR2VecHandler &) = delete;
  IR2VecHandler &operator=(const IR2VecHandler &) = delete;
  IR2VecHandler(IR2VecHandler &&) noexcept = default;
  IR2VecHandler &operator=(IR2VecHandler &&) noexcept = default;

  std::string getFile() { return fileName; }
  std::string getOutputFile() { return outputFile; }
  std::string getMode() { return mode; }
  std::string getLevel() { return level; }

  IR2Vec::Vector getProgramVector() const { return emb->getProgramVector(); }

  llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128> &
  getInstVecMap() {
    return emb->getInstVecMap();
  }

  llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16> &
  getFunctionVecMap() {
    return emb->getFunctionVecMap();
  }

  void generateEmbeddings(std::string function_name = "") {
    IR2Vec::iname = fileName;
    std::cout << "Filename settled " << IR2Vec::iname << std::endl;

    IR2Vec::IR2VecMode ir2vecMode =
        (mode == std::string("sym") ? IR2Vec::Symbolic : IR2Vec::FlowAware);

    std::cout << "Filename ir2vec mode settled " << ir2vecMode << std::endl;

    std::unique_ptr<llvm::Module> Module = IR2Vec::getLLVMIR();

    std::cout << "Module initialized" << std::endl;

    emb = std::make_unique<IR2Vec::Embeddings>(*Module, ir2vecMode, level.at(0),
                                               outputFile, dim, function_name);

    std::cout << "Embedding object created" << std::endl;

    if (!emb) {
      throw std::runtime_error("Failed to create embeddings");
    }
  }
};

IR2VecHandler *initEmbedding(std::string filename = "", std::string mode = "",
                             std::string level = "",
                             std::string output_file = "",
                             std::string function_name = "",
                             unsigned dim = 300) {

  std::cout << "TEST function" << std::endl;

  if (fileNotValid(filename))
    throw std::runtime_error("Invalid File Path");

  if (not output_file.empty())
    if (fileNotValid(output_file))
      throw std::runtime_error("Invalid Output File Path");

  if (not(mode == std::string("sym") or mode == std::string("fa")))
    throw std::runtime_error(
        "Eroneous mode entered . Either of sym, fa should be "
        "specified");

  if (not(level.at(0) == 'p' or level.at(0) == 'f'))
    throw std::runtime_error("Invalid level specified: Use either p or f");

  std::cout << "Validation Functions done" << std::endl;

  IR2VecHandler *ir2vecObj =
      new IR2VecHandler(filename, output_file, mode, level, dim);

  std::cout << "ir2vec object created" << std::endl;

  if (!ir2vecObj) {
    throw std::runtime_error("Failed to Create embeddings");
  }

  std::cout << "ir2vec object validated - not nullptr" << std::endl;

  ir2vecObj->generateEmbeddings(function_name);

  std::cout << "embedding generation done" << std::endl;

  return ir2vecObj;
}

PYBIND11_MODULE(pr2vec, m) {
  m.doc() = R"pbdoc(
        IR2Vec Python bindings.

        Exposes selected APIs and utilities from the IR2Vec C++ library.
    )pbdoc";

  m.attr("__version__") = IR2VEC_VERSION;
  m.def(
      "getVersion", [] { return std::string(IR2VEC_VERSION); },
      "Get IR2Vec Version");

  m.def(
      "initEmbeddings",
      [](const std::string &filename, const std::string &mode,
         const std::string &level, const std::string &output_file = "",
         const std::string &function_name = "", unsigned dim = 300) {
        py::gil_scoped_release release;
        IR2VecHandler *ptr = initEmbedding(filename, mode, level, output_file,
                                           function_name, dim);
        return ptr;
      },
      py::arg("filename"), py::arg("mode"), py::arg("level"),
      py::arg("output_file") = "", py::arg("function_name") = "",
      py::arg("dim") = 300, py::return_value_policy::take_ownership,
      R"pbdoc(
      Create an IR2VecHandler by invoking the C++ initEmbedding() factory.
      Runs validation and generates embeddings before returning the object.
    )pbdoc");

  py::class_<IR2VecHandler>(m, "IR2VecHandler")
      .def(py::init<std::string, std::string, std::string, std::string,
                    unsigned>(),
           py::arg("filename"), py::arg("output_file"), py::arg("mode"),
           py::arg("level"), py::arg("dim"))

      .def("getProgVector", &IR2VecHandler::getProgramVector,
           py::call_guard<py::gil_scoped_release>(),
           R"pbdoc(Return the program vector as a list of floats.)pbdoc")

      .def(
          "getFuncVectorMap",
          [](IR2VecHandler &self) {
            std::cout << "Entered Function" << std::endl;

            auto &map = self.getFunctionVecMap();
            std::cout << "Map fetched" << std::endl;

            py::dict out;
            for (const auto &kv : map) {
              std::cout << "Creating elements" << std::endl;
              const llvm::Function *F = kv.first;
              if (!F)
                continue;
              std::cout << F->getName().str() << std::endl;
              out[py::str((F->getName()).str())] = py::cast(kv.second);
              // std::vector<double> -> list[float]
              // TODO :: check if F->getName() is sufficient
              // or some other demangled name methods are needed
            }

            std::cout << "Dict created" << std::endl;
            return out;
          },
          R"pbdoc(Return {function_name: vector} as a dict.)pbdoc")

      .def(
          "getInstVectorMap",
          [](IR2VecHandler &self) {
            auto &map = self.getInstVecMap();
            py::dict out;
            for (const auto &kv : map) {
              const llvm::Instruction *I = kv.first;
              if (!I)
                continue;
              out[py::str(I->getOpcodeName())] =
                  kv.second; // tweak key if you want
            }
            return out;
          },
          R"pbdoc(Return {instruction_name: vector} as a dict.)pbdoc");
}
