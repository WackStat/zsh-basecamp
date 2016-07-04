#                         __          
# __  _  _______    ____ |  | ______  
# \ \/ \/ /\__  \ _/ ___\|  |/ /  _ \ 
#  \     /  / __ \\  \___|    <  <_> )
#   \/\_/  (____  /\___  >__|_ \____/ 
#               \/     \/     \/      
#  ZSH Ressource File / OSX with brew 

# Path to your oh-my-zsh installation.
export ZSH=/Users/wacko/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="wackolo"

# [OSX] Uncomment th following line to point the help to the brew pass
unalias run-help; autoload run-help
HELPDIR=/usr/local/share/zsh/help

# Display wainting dots when completing long path or commands so you can 
# see ZSH is working
COMPLETION_WAITING_DOTS="true"

# Warn when typing dangerous command by color coding the the prompt
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

# Add a 10 second wait before issuing a wildcard deletion
setopt RM_STAR_WAIT

# Configure the ZSH history
export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Disable colors in ls.
# DISABLE_LS_COLORS="true"

# Disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Load plugins (can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(z zsh-syntax-highlighting 
	 sudo sublime web-search
	 osx brew brew-cask
	 aws mvn npm
	 git git-extras github
	 nyan chucknorris)

# Export your mighty PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/X11/bin"

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Export the language 
export LANG=en_US.UTF-8

# [OSX] BYOBU prefix for brew
export BYOBU_PREFIX=$(brew --prefix)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vim'
fi

# SSH Key path
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Display a welcoming message
# chuck | cowsay -e Oo | lolcat

# Some other env variables
export JAVA_HOME=$(/usr/libexec/java_home)

# END
