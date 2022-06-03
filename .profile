#----------------------------------通用配置-------------------------------------#
# 通用
## 命令提示
alias curl_json="echo curl -i -H \'Accept: application/json\' -H \'Content-Type: application/json\' -X POST -d \'{}\' https://"
alias curl_form="echo curl -i -X POST -d \'a=b\' http://url"
alias git_reset="echo 'git fetch --all && git reset --hard origin/master && git pull'"

## git命令及合并
alias gisee="git diff && git status && git branch && echo "
alias gipull="git pull && git pull origin master && git branch && echo"
alias gifix="git commit -am 'fix'"
alias q="exit"

## ssh 访问服务
export MOBILE_RED="ssh -p9000 u0_a76@192.168.1.102"
export MOBILE="ssh -p 8022 192.168.0.72"

## vim-crystal 鸡肋语言, 不学了吧?
#git clone git@github.com:vim-crystal/vim-crystal.git
#cd vim-crystal/
#cp -R autoload ftdetect ftplugin indent plugin syntax ~/.vim/

## 语言支持
export LANG=zh_CN.utf8

## Nodejs
### Path
export PATH="/home/$USER/Apps/node/bin:$PATH"
### gitbook
alias gitbook="/home/$USER/blog/node_modules/gitbook-cli/bin/gitbook.js"

## Golang
### Proxy
export GOPROXY=https://goproxy.io,direct
### Path
export PATH="/home/$USER/Apps/go/bin:$PATH"

## Bash
### AutoFill
source /usr/share/bash-completion/bash_completion
### Proxy
#### NicoVPN
#export http_proxy=http://192.168.0.71:8001
#export https_proxy=http://192.168.0.71:8001
#### Clash
#export http_proxy=http://127.0.0.1:7890
#export https_proxy=http://127.0.0.1:7891
### Docker
alias docker_ps="docker ps -a | awk '{print \$2,\$5,\$6,\$7,\$8}'"

# 依赖记录项
## vbox: libqt5opengl5
## kate: konsole
# ----------------------------profile: 已完成配置---------------------------
