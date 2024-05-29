#!/bin/bash

docker save -o hello.tar hello_world:latest

sudo k3s ctr i import hello.tar

rm hello.tar
