#!/bin/bash
select100=($(seq 1 1 100))
for i in {1..10}; do echo ${select100[$((RANDOM % 99))]}; done
