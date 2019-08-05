
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------
 
#   Change Prompt
#   tput changes the colors of the different components of the
#   prompt. 
#   ------------------------------------------------------------
export PS1='\[$(tput setaf 3)\]\u\[$(tput setaf 6)\]@\[$(tput setaf 5)\]\h \[$(tput setaf 4)\]\W $(__git_ps1 " \[$(tput setaf 2)\](%s)")\[$(tput sgr0)\] \$  '

