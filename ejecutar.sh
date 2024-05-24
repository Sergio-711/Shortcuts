#!/bin/bash

echo "Contenido de input.py:"
cat input.py

flex shortcuts.l

gcc lex.yy.c -o shortcuts -lfl

./shortcuts input.py program.py


echo "Contenido de program.py:"
cat program.py

echo "Ejecutando program.py usando Python 3"
python3 program.py

