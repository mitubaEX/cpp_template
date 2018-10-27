#!/bin/bash
cd $1 && g++ -std=c++11 main.cc && oj test -c ./a.out && cd ..
