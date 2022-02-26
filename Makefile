.PHONY: clean init check help
SHELL := /bin/bash

all: check

clean:

init_profile:
	cp ~/.profile ~/.profile_bak_`date '+%Y%m%d_%H%M%S'`
	cat .profile >> ~/.profile
init_vim:
	cp .vimrc ~/
	mkdir ~/.vim/autoload/ -p
	cp vim_plug/plug.vim ~/.vim/autoload/
	git clone git@github.com:fatih/vim-go.git ~/.vim/plugged/vim-go
	git clone git@github.com:mattn/vim-goimports.git ~/.vim/plugged/vim-goimports
	vim +PlugInstall
	cp ~/.vimrc ~/.vimrc_bak_`date '+%Y%m%d_%H%M%S'`
	cat .vimrc >> ~/.vimrc
init_git:
	git config --global core.quotepath false          # 显示 status 编码
	git config --global gui.encoding utf-8            # 图形界面编码
	git config --global i18n.commit.encoding utf-8    # 提交信息编码
	git config --global i18n.logoutputencoding utf-8  # 输出 log 编码
	export LESSCHARSET=utf-8 # 最后一条命令是因为 git log 默认使用 less 分页，所以需要 bash 对 less 命令进行 utf-8 编码
init_bash_auto_completion:
	@echo "init make completion"
	sudo cp make  /usr/share/bash-completion/completions
	@echo "init bash_completion"
	sudo cp bash_completion /usr/share/bash-completion/bash_completion
	source /usr/share/bash-completion/bash_completion
init_jupyter:
	pip install jupyter
	pip install jupyter_contrib_nbextensions
	jupyter contrib nbextension install --user --skip-running-check
open_jupyter:
	jupyter-notebook --generate-config -y
	mv ~/.jupyter/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py.bak
	cp jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py

init: init_profile init_vim init_git

check:
	tail ~/.profile | grep "配置"
	@echo "---------------------------------------------------------"
	@echo ""
	tail ~/.vimrc | grep "配置"
	@echo "---------------------------------------------------------"
	@echo "bash 命令自动补全检测"
	ls /usr/share/bash-completion/bash_completion
	@echo "---------------------------------------------------------"
	@echo ""

help:
	@echo "make: 检测各个配置文件是否已经配置完毕"
	@echo "make init: init_profile init_vim init_git"
	@echo "make init_bash_auto_completion: sudo need 配置bash命令自动补全"
	@echo "make open_jupyter: 配置jupyter-notebook可在局域网访问 需保证在含有jupyter的环境下使用"
	@echo "make clean: 还原各个文件"

