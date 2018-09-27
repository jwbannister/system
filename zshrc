source ~/.global_variables
export PATH=/Users/john/sh:$PATH

POWERLEVEL9K_MODE='nerdfont-complete'
source  ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(anaconda vcs dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
alias ls='ls -G'

# required for conda environments
. /anaconda3/etc/profile.d/conda.sh
if { [ "$TERM" = "screen-256color" ] && [ -n "$TMUX" ]; } then
    if [ -z "$TMUX_ENV" ]; then
        TMUX_ENV=$CONDA_DEFAULT_ENV
    fi
    conda deactivate
    conda activate $TMUX_ENV
else
    conda activate
fi
