export TERM="screen-256color"
export PATH=$PATH:~/.local/bin

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /home/brett/.local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh
