# add user's bin directory to path
if [ -d $HOME/.local/bin ]
then
        export PATH=$HOME/.local/bin:$PATH
fi

export ZDOTDIR="$HOME/.config/zsh"