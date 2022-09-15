import IR2Vec_pkg as pp

d = pp.generateEmbeddings("/home/shikhar_jain/simpleBranch.ll", "fa", "f")

if d["Status"]:
    # print(d.keys())
    for x in d["Function_Dict"]:
        print("key: ", x)
        print("Value: ", d["Function_Dict"][x])
    print("\n\n")
    print(d["Instruction_Dict"].keys())
else:
    print(d["Message"])
