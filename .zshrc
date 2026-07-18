# ==========================================
# 1. PATH & Environment Variables
# ==========================================
export ANDROID_HOME="/usr/local/share/android-sdk"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$PATH:/Users/natanaelfrancisco/.local/bin"
export PATH="$PATH:$HOME/Library/Android/sdk/build-tools/37.0.0/"

export CLICOLOR=1
export LSCOLORS=ExexFxDxCxDxDxhbadacec

# ==========================================
# 2. Prompt Configuration
# ==========================================
setopt PROMPT_SUBST

## Git branch (Fast check)
git_branch() {
    local branch
    branch=$(git branch --show-current 2>/dev/null)
    [[ -n "$branch" ]] && echo " $branch"
}

# Using native %(6~|~/.../%4~|%~) instead of a subshell function for speed
PROMPT='(%F{cyan}%n@%m%f)-[%F{blue}%(6~|~/.../%4~|%~)%f%F{yellow}$(git_branch)%f]
%F{white}%f ❯ '

# ==========================================
# 3. Completions & Tabbing
# ==========================================
autoload -Uz compinit
compinit -C # Added -C for faster cache loading

## Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

## Show selectable menu
zstyle ':completion:*' menu yes select

## Completion + typo correction
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:*' max-errors 2 numeric

## Completion colors
zstyle ':completion:*' list-colors 'di=34'

# ==========================================
# 4. Plugins & Syntax Highlighting
# ==========================================
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Custom syntax highlighting colors
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[option]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[path]='fg=blue'
ZSH_HIGHLIGHT_STYLES[bracketed-parameter]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[alias]='fg=white'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
