.PHONY: clean init check help

all: check

clean:

init_profile:
	cat .profile >> ~/.profile
init_vim:
	cp .vimrc ~/
	mkdir ~/.vim/autoload/ -p
	cp vim_plug/plug.vim ~/.vim/autoload/
	git clone git@github.com:fatih/vim-go.git ~/.vim/plugged/vim-go
	 git clone git@github.com:mattn/vim-goimports.git ~/.vim/plugged/vim-goimports
	vim +PlugInstall
init: init_profile init_vim

check:

help:
	@echo "make: 检测各个配置文件是否已经配置完毕"
	@echo "make clean: 还原各个文件"


