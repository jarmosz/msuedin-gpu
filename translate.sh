#!/bin/bash

chmod 777 /tmp

input=$(mktemp)

cat > $input

output=$(mktemp)
outlogs=$(mktemp)

cd /pretraining-bea2019/systems

./run.sh  model.restricted $input $output > $outlogs

git diff --no-index --word-diff $input $output