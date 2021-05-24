#!/bin/bash

git add .
git commit -s -S -m "first"
git push

git tag -d test
git push --delete origin test

git tag test
git push origin test
