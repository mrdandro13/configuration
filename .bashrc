[[ $- != *i* ]] && return

# zsh aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# profile
if [ -f ~/.profile ]; then
    . ~/.profile
fi

# vi mode
set -o vi
bind '"jk":vi-movement-mode'
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# fzf bindings
bind '"\C-t": transpose-chars'
bind -x '"\C-g": fzf-file-widget'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init bash)"
