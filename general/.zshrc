bindkey -v

autoload -Uz compinit

# History
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Prompt
setopt prompt_subst

autoload -U colors && colors

function git_branch_parse() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' | sed -e "s/* \(.*\)/ `printf "\033[0;91m"`(`printf "\033[0;93m"`\1`printf "\033[0;91m"`)/"
}

function bold() {
    echo "%B$@%b"
}

function color() {
    num=$1
    shift
    echo "%F{$num}$@%f"
}

reset="%{$reset_color%}";
red=9;
green=10;
yellow=11;
blue=12;
magenta=13;
cyan=14;
white=15;

PROMPT="$reset"$'\n'"";
PROMPT+="$reset";
PROMPT+="$(color $red $(bold %n))$reset";
PROMPT+=" at ";
PROMPT+="$(color $yellow $(bold %M))$reset";
PROMPT+=" in ";
PROMPT+="$(color $magenta $(bold %~))$reset";
PROMPT+='$(git_branch_parse)'
PROMPT+="$reset"$'\n'"";
PROMPT+="$(color $white $(bold "->")) $reset";

# Environment
add_path() {
    PATH="$PATH"
    PATH+=":$1"
}

add_path "$HOME/.scripts"

export MANPAGER="nvim +Man!"
export GTK_THEME="Adwaita:dark"
export QT_STYLE_OVERRIDE="Adwaita-Dark"
export GTK2_RC_FILES="/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc"
export EDITOR="nvim"

# Alias
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias config="cd ~/.dotfiles && lazygit"
alias oo="cd ~/personal"
alias on="nvim -c ObsidianNew"
alias ont="nvim -c ObsidianNewFromTemplate"

bindkey -s ^f "fzftmux\n"

# Misc
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
