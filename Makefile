.PHONY: clean init check help

all: check

clean:

init_profile:
	cat .profile >> ~/.profile
init_vim:

init: init_profile init_vim

check:

help:
	@echo "make: 检测各个配置文件是否已经配置完毕"
	@echo "make clean: 还原各个文件"


