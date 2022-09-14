import IR2Vec_pkg as pp
#pp.generateEmbeddings("/home/shikhar_jain/OLD_ERDOS_HOME/ll-files/simple.ll","fa","/home/shikhar_jain/OLD_ERDOS_HOME/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt")
#print("ooko")
d=pp.generateEmbeddings("/home/shikhar_jain/simpleBranch.ll","fa","f")
#print(d["message"])
#print("uiuiuiu")
if(d["Status"]):
   # print(d.keys())
    for x in d["Function_Dict"]:
        print("key: ",x)
        print("Value: ",d["Function_Dict"][x])
    print("\n\n")
    print(d["Instruction_Dict"].keys())    
else:
    print(d["Message"])

#print(d[0])
#for x in d[0].keys():
#    print(d[x])
