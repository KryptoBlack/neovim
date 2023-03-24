#!/bin/bash

docker run -it \
    -v $(pwd)/nvim:/home/kryptoblack/.config/nvim \
    kryptoblack/nvim
