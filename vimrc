:if !empty(glob("/usr/share/vim/google/google.vim"))
:   echo "Found google.vim, so parsing it!"
:   source /usr/share/vim/google/google.vim
:endif

source $HOME/Lab/github/rc/common.vimrc
