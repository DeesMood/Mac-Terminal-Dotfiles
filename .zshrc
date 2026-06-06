
# Created by `pipx` on 2026-06-04 07:01:52
export PATH="$PATH:/Users/natanaelfrancisco/.local/bin"

# Prompt Appearance
autoload -U colors && colors
setopt PROMPT_SUBST

## Git branch
git_branch() {
    local branch
    branch=$(git branch --show-current 2>/dev/null)
    [[ -n "$branch" ]] && echo " $branch"
}

## PWD Shorterner

short_pwd() {
    local path="${PWD/#$HOME/~}"
    local parts

    parts=("${(@s:/:)path}")

    if (( ${#parts[@]} > 5 )); then
        echo "~/.../${parts[-4]}/${parts[-3]}/${parts[-2]}/${parts[-1]}"
    else
        echo "$path"
    fi
}

PROMPT='(%F{cyan}%n@%m%f)-[%F{blue}$(short_pwd)%f%F{yellow}$(git_branch)%f]
%F{white}%f ❯ '

# Change Directory Color LS
export CLICOLOR=1
export LSCOLORS=ExexFxDxCxDxDxhbadacec

# Change Color for Tabbing
autoload -Uz compinit
compinit

## Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

## Show selectable menu
zstyle ':completion:*' menu yes select

## Completion + typo correction
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:*' max-errors 2 numeric

## Completion colors
zstyle ':completion:*' list-colors 'di=34'

# Autosuggestion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
