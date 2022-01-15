neofetch

export PATH="$HOME/.local/bin:$PATH"

#

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
#setopt beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pfcorzo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#its in the git dir
source /home/pfcorzo/GIT/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
#its in the git dir
source ~/GIT/zsh-autosuggestions/zsh-autosuggestions.zsh
#
#its in the aur directory
autoload -U promptinit; promptinit
prompt spaceship
#
#its in the aur directory
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

