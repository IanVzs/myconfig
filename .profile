#----------------------------------通用配置-------------------------------------#
# 通用
## 命令提示
alias curl_json="echo curl -i -H \'Accept: application/json\' -H \'Content-Type: application/json\' -X POST -d \'{}\' https://"
alias curl_form="echo curl -i -X POST -d \'a=b\' http://url"
alias git_reset="echo 'git fetch --all && git reset --hard origin/master && git pull'"

## git命令及合并
alias gisee="git diff && git status && git branch"
alias gipull="git pull && git pull origin master && git branch"
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

## Golang
### Proxy
export GOPROXY=https://goproxy.io,direct
### Path
export PATH="/usr/local/go/bin:$PATH"
# export PATH="/Users/ianvzs/go/bin:$PATH"
# export PATH="/usr/local/go/bin:$PATH"

# ----------------------------profile: 已完成配置---------------------------