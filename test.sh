#!/bin/bash

function test {
  echo -n "$1 "
  ocamlc "$1" && ./a.out &>/dev/null

  if [ $? -eq 0 ]; then
    echo "OK"
  else
    echo "Incorrect"
  fi

  rm a.out *\.cm{i,o}
}

for i in `seq 1 4`; do
  test p$i.ml
done
