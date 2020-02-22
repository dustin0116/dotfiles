#TMUX
if [ "$TMUX" = "" ]; then tmux; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#Tab menu.
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# ZSH THEME.
autoload -U promptinit; promptinit
prompt spaceship

#Welcome Screen.
curl -s "https://sv443.net/jokeapi/v2/joke/Programming?blacklistFlags=religious,racist,sexist&type=single" |\
 jq --raw-output '.joke' | cowsay -f elephant

#Alias
alias ls="ls -G"
alias tunnelvm="ssh dustin-vm -L 2222:localhost:22 'echo Tunnel ready! Press Ctrl + C to end.; cat'"
alias zshconfig='vim ~/.zshrc'
alias tmuxconfig='vim ~/.tmux.conf'
alias tmuxreload='tmux source-file ~/.tmux.conf'
alias reload='source ~/.zshrc'

#Others
eval "$(nodenv init -)"
