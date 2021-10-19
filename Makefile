.PHONY: clean init check help

all: check

clean:

init_profile:
	cp ~/.profile ~/.profile_bak_`date '+%Y%m%d_%H%M%S'`
	cat .profile >> ~/.profile
init_vim:
	cp ~/.vimrc ~/.vimrc_bak_`date '+%Y%m%d_%H%M%S'`
	cat .vimrc >> ~/.vimrc
init_git:
	git config --global core.quotepath false          # 显示 status 编码
	git config --global gui.encoding utf-8            # 图形界面编码
	git config --global i18n.commit.encoding utf-8    # 提交信息编码
	git config --global i18n.logoutputencoding utf-8  # 输出 log 编码
	export LESSCHARSET=utf-8 # 最后一条命令是因为 git log 默认使用 less 分页，所以需要 bash 对 less 命令进行 utf-8 编码

init: init_profile init_vim init_git

check:
	tail ~/.profile | grep "配置"
	@echo ""
	@echo "---------------------------------------------------------"
	@echo ""
	tail ~/.vimrc | grep "配置"
help:
	@echo "make: 检测各个配置文件是否已经配置完毕"
	@echo "make clean: 还原各个文件"


