# custom prompt
PROMPT='%{%F{5}%}%1~ %{%F{8}%}$ %{%F{7}%}'

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# plugins
ZSH_CUSTOM=$HOME/.config/zsh/plugins

source $ZSH_CUSTOM/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
ZSH_AUTOSUGGEST_STRATEGY=(completion)

# standard paths
alias h="cd"
alias doc="cd /home/maulve/Documents"
alias dls="cd /home/maulve/Downloads"

# custom paths
alias app="cd /home/maulve/Applications"
alias gdp="cd /home/maulve/Godot/Projects"
alias flp="cd \"/home/maulve/Documents/Image-Line/FL Studio/Projects\""
alias obs="cd /home/maulve/Obsidian"
alias dot="cd ~/dotfiles"

# custom commands
alias bgm="/home/maulve/Applications/scripts/bgm/start.sh"
alias mouselock="sudo /home/maulve/Applications/scripts/mouse-lock/start.sh"
alias webui="cd "/home/maulve/stable-diffusion-webui" && source ./venv/bin/activate && ./webui.sh"
alias comfy="/home/maulve/ComfyUI/venv/bin/python /home/maulve/ComfyUI/main.py --output-directory /home/maulve/ai/output/comfyui"
alias fav="go run /home/maulve/Applications/scripts/fastfav/fastfav.go"
alias update="~/update.sh"
alias logout="hyprctl dispatch exit"
alias venv="source venv/bin/activate"
alias rr="ranger"
alias mr="micro"
alias discord="firefox --new-window https://discord.com/channels/@me"
alias zshrc="micro ~/.zshrc"
