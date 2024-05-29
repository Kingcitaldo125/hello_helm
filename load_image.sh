#!/bin/bash

docker save -o hello-helm.tar hello-helm:latest

sudo k3s ctr i import hello-helm.tar

rm hello-helm.tar
