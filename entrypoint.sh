#!/bin/bash

docker cp ${1}/${2}.pub ${3}:/tmp/
docker cp ${1}/${2} ${3}:/tmp/
