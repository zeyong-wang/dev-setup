FROM ubuntu:latest

RUN apt-get upgrade && apt-get update

RUN apt-get install -y curl

RUN export TIMEZONE=$(tzselect)

RUN apt-get -y install tmux
RUN curl -fLo ~/.tmux.conf https://raw.githubusercontent.com/zeyong-wang/dev-setup/main/.tmux.conf

RUN apt-get -y install cmake
RUN apt-get -y install git
RUN apt-get -y install g++
RUN apt-get -y install vim
RUN apt-get -y install neovim

# copy config files
RUN curl -fLo ~/.vimrc https://raw.githubusercontent.com/zeyong-wang/dev-setup/main/.vimrc
RUN curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/zeyong-wang/dev-setup/main/init.vim
