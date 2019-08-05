# Terminal start-up message using the fortune and cowsay programs.
# Randomly selects from cowsay options stored in an array called
# speakers.
speakers=(dragon kitty hellokitty stegosaurus tux)
opt_len=${#speakers[@]}
rand_choice=$(( $RANDOM % $opt_len ))
fortune | cowsay -f ${speakers[$rand_choice]}

# Git scripts
source ~/.git-completion.bash
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
