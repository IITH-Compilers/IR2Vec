FROM quay.io/pypa/manylinux_2_28_x86_64 AS builder
LABEL maintainer="Shamil K (noteness@riseup.net)"

RUN yum -y install cmake wget openssl-devel
RUN yum -y install gcc gcc-c++ glibc-devel glibc-static libgcc glibc glibc-devel libstdc++-devel

RUN mkdir /root/destdir

WORKDIR /root/cmake
ARG CMAKE_VERSION="3.26.4"
RUN wget -q "https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}.tar.gz" \
	&& tar -xf "cmake-${CMAKE_VERSION}.tar.gz"
WORKDIR "/root/cmake/cmake-${CMAKE_VERSION}"
RUN cmake -DCMAKE_BUILD_TYPE=Release .
RUN make -j "$(nproc)"
RUN cmake --install .
RUN cmake --install . --prefix /root/destdir

WORKDIR /root/ninja
ARG NINJA_VERSION="1.12.1"
RUN wget -q "https://github.com/ninja-build/ninja/archive/refs/tags/v${NINJA_VERSION}.tar.gz" \
	&& tar -xf "v${NINJA_VERSION}.tar.gz"
WORKDIR "/root/ninja/ninja-${NINJA_VERSION}"
RUN cmake -DCMAKE_BUILD_TYPE=Release -B build
RUN cmake --build build -j"$(nproc)"
RUN cmake --install build
RUN cmake --install build --prefix /root/destdir

WORKDIR /root/mold
ARG MOLD_VERSION="2.37.0"
RUN wget -q "https://github.com/rui314/mold/archive/refs/tags/v${MOLD_VERSION}.tar.gz" \
	&& tar -xf "v${MOLD_VERSION}.tar.gz"
WORKDIR "/root/mold/mold-${MOLD_VERSION}"
RUN cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -B build
RUN cmake --build build -j"$(nproc)"
RUN cmake --install build
RUN cmake --install build --prefix /root/destdir

WORKDIR /root/llvm
ARG LLVM_VERSION="20.1.0"
RUN wget -q "https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_VERSION}/llvm-project-${LLVM_VERSION}.src.tar.xz" \
	&& tar -xf "llvm-project-${LLVM_VERSION}.src.tar.xz"
WORKDIR /root/llvm/llvm-project-${LLVM_VERSION}.src/build
RUN cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
	-DLLVM_ENABLE_PROJECTS='clang' \
	-DCLANG_ENABLE_BOOTSTRAP=On \
	-DLLVM_LINK_LLVM_DYLIB=On \
	-DLLVM_USE_SPLIT_DWARF=On \
	-DBOOTSTRAP_LLVM_LINK_LLVM_DYLIB=On \
	-DBOOTSTRAP_LLVM_USE_SPLIT_DWARF=On \
	-DBOOTSTRAP_LLVM_USE_LINKER=mold \
	-DCMAKE_INSTALL_PREFIX=/root/destdir \
	../llvm
RUN ninja stage2 -j "$(nproc)"
RUN ninja stage2-install -j "$(nproc)"

FROM quay.io/pypa/manylinux_2_28_x86_64
COPY --from=builder /root/destdir /usr/local/

COPY entrypoint /usr/local/bin/entrypoint

ENTRYPOINT ["entrypoint"]
CMD ["/bin/bash"]
