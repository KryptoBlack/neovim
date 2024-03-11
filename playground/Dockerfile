FROM archlinux:latest

# install nvim and dependencies
RUN pacman --noconfirm -Syu neovim 
RUN pacman --noconfirm -S git npm luarocks

# IMPORTANT: will have to setup hack nerd font on terminal emulator for the 
# icons to work in nvim-tree
RUN pacman --noconfirm -S ttf-hack-nerd ripgrep

# create a unpreveledged user
ENV USER_NAME=kryptoblack
ENV UID=1000
ENV GID=1000

RUN groupadd -g ${GID} kryptoblack 
RUN useradd kryptoblack -u ${UID} -g ${GID} -m -s /bin/bash
# USER ${USER_NAME}

# create nvim config path
RUN mkdir -p /home/${USER_NAME}/.config/nvim
COPY nvim /home/${USER_NAME}/.config/nvim

