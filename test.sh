#!/bin/bash

function test {
  echo "Testing $1"
  ocamlc "$1"
  ./a.out

  rm a.out *\.cm{i,o}
}

for i in `seq 1 4`; do
  test p$i.ml
done
