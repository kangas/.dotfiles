export DF_BASE_PATH=~/.dotfiles

source $DF_BASE_PATH/aliases.sh
source $DF_BASE_PATH/bash_completion.sh
source $DF_BASE_PATH/bash_path.sh
source $DF_BASE_PATH/bash_prompt.sh
source $DF_BASE_PATH/bash_history.sh
source $DF_BASE_PATH/editor.sh
source $DF_BASE_PATH/freedesktop.sh
source $DF_BASE_PATH/go.sh
source $DF_BASE_PATH/m.sh
source $DF_BASE_PATH/node.sh
source $DF_BASE_PATH/python.sh

if ( grep -qE "Microsoft" /proc/version )
then
  source $DF_BASE_PATH/ssh_agent_windows.sh
fi
