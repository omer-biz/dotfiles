#source "$HOME/.ohmyzsh.zsh"
# Luke's config for the Zoomer Shell
# bindkey -s '^m' "lf /run/media/omer/\n"
# Enable colors and change prompt:
autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1d%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
# lfcd () {
#     tmp="$(mktemp)"
#     lf -last-dir-path="$tmp" "$@"
#     if [ -f "$tmp" ]; then
#         dir="$(cat "$tmp")"
#         rm -f "$tmp"
#         [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
#     fi
# }
# bindkey -s '^o' 'lfcd\n'
bindkey -s '^o' "ranger\n"


# Edit line in vim with ctrl-e:
# autoload edit-command-line; zle -N edit-command-line
# bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/zsh/shortcutrc" ] && source "$HOME/.config/zsh/shortcutrc"
[ -f "$HOME/.config/zsh/aliasrc" ] && source "$HOME/.config/zsh/aliasrc"

# fzf
export FZF_DEFAULT_OPTS='--height 85% --layout=reverse --border'

[ -f "$HOME/.config/zsh/fzf_completion.zsh" ] && source "$HOME/.config/zsh/fzf_completion.zsh"
[ -f "$HOME/.config/zsh/fzf_key_bindings.zsh" ] && source "$HOME/.config/zsh/fzf_key_bindings.zsh"

# PATH
PATH=$PATH:$HOME/.local/scripts

# z.lua
eval "$(lua /usr/share/z.lua/z.lua --init zsh)"

# starship
eval "$(starship init zsh)"

# Dynamic window title with zsh shell.
# Shows current directory and running (multi-line) command.

case "$TERM" in (rxvt|rxvt-*|st|st-*|*xterm*|(dt|k|E)term)
    local term_title () { print -n "\e]0;${(j: :q)@}\a" }
    precmd () {
      local DIR="$(print -P "[%~]%#")"
      term_title "$DIR" "zsh"
    }
    preexec () {
      local DIR="$(print -P "[%~]%#")"
      local CMD="${(j:\n:)${(f)1}}"
      term_title "$DIR" "$CMD"
    }
  ;;
esac

# autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
