# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# TMUX
if [ "$TMUX" = "" ]; then tmux; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Tab menu.
#autoload -Uz compinit
#compinit
#zstyle ':completion:*' menu select
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
autoload -Uz compinit
compinit
zstyle ':completion:*' menu yes select

# ZSH THEME.
autoload -U promptinit; promptinit
prompt spaceship

# Welcome Screen.
#curl -s "https://sv443.net/jokeapi/v2/joke/Programming?blacklistFlags=religious,racist,sexist&type=single" |\
# jq --raw-output '.joke' | cowsay -f elephant

#Alias
alias ls="ls -G"
alias tunnelvm="ssh dustin-vm -L 2222:localhost:22 'echo Tunnel ready! Press Ctrl + C to end.; cat'"
alias zshconfig='vim ~/.zshrc'
alias vimconfig='vim ~/.vimrc'
alias tmuxconfig='vim ~/.tmux.conf'
alias tmuxreload='tmux source-file ~/.tmux.conf'
alias reload='source ~/.zshrc'

#ZSH Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

#ZSH Autosuggestion
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=0,bold"

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Others
eval "$(nodenv init -)"
