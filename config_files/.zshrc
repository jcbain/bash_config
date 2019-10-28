# Terminal start-up message using the fortune and cowsay programs.
# Randomly selects from cowsay options stored in an array called
# speakers.
speakers=(dragon kitty hellokitty stegosaurus tux)
opt_len=${#speakers[@]}
rand_choice=$(( $RANDOM % $opt_len + 1 ))
fortune | cowsay -f ${speakers[$rand_choice]}

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# zsh configurations
eval "$(starship init zsh)"
source /Users/jamesbain/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /Users/jamesbain/.zsh/completion.zsh

# git completion
# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

