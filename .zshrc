export ZSH=/Users/evgenii.molov/.oh-my-zsh

ZSH_THEME="robbyrussell"

HIST_STAMPS="dd.mm.yyyy"

DEFAULT_USER=dick.dickson

#https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
#https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#osx
plugins=(
  git
  osx
)


# check some hits here: https://gist.github.com/kevin-smets/8568070

############################ 
#### alias block ###########
alias ..='cd ..'
alias chmod_files='find -maxdepth 10 -type f -exec chmod 644 {} \;'
alias chmod_folders='find -maxdepth 10 -type d -exec chmod 755 {} \;'
alias ls="ls -haltGp"
alias ports="sudo lsof -iTCP -sTCP:LISTEN -n -P"

# run as `del_recursive folderName`
delRecursive() {
    find . | grep '$1' | xargs rm
}
# run as `process nginx`
process() {
    ps -ef | grep $1
}

# run as `findContent text [directory]`
findContent() {
    if [ $2 -eq 0 ] ; then
        $2 = '.'
    fi
    grep -rnw $2 -e '$1'
}

############################ 
#### end of alias block ####

source $ZSH/oh-my-zsh.sh
