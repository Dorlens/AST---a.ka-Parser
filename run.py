from src import lexer as L
from src import parser as P
from src.wat_codegen import compile_

source = open("test.min").read()

tokens = L.lex(source)

program = P.parse(tokens)

wat = compile_(program)

with open("out.wat", "w") as f:
    f.write(wat)

print(wat)