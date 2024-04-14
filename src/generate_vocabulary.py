import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-o', '--output',type=str, help='Output file name')
args = parser.parse_args()

if args.output is None:
    print('Error: Output file path not provided.')
    exit(1)

output_file = args.output
vocab_file='../vocabulary/seedEmbeddingVocab.txt'

# Define headers and opening/closing of map
header = """\
#pragma once

#include <map>
#include <string>
#include <vector>
#include "IR2Vec.h"

using namespace llvm;

extern const std::map<std::string, IR2Vec::Vector> vocabulary;

"""

opening = '\nconst std::map<std::string, IR2Vec::Vector> vocabulary = {\n'
closing = '};\n'

try:
    with open(output_file, 'w') as fw:
        fw.write(header)
        with open(vocab_file, 'r') as fr:
            # Write vector declarations to the output file
            for line in fr.readlines():
                key, val = line.strip().split(':')
                e = val.find(']')
                fw.write(f'const IR2Vec::Vector {key}_vector = {{  {val[1:e]} }};\n')
                
        fw.write(opening)
        with open(vocab_file, 'r') as fr:
            # Write map entries to the output file
            for line in fr.readlines():
                key, _ = line.strip().split(':')
                fw.write(f'    {{ "{key}", {key}_vector }},\n')
        fw.write(closing)
        
    print(f'Generated {output_file}')

except FileNotFoundError:
    print(f"Error: Vocabulary file '{vocab_file}' not found.")
