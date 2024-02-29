# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
export BIN_PATH=$HOME/bin
export USR_LOCAL_BIN_PATH=/usr/local/bin
export BREW_PATH=/opt/homebrew/bin
export JDK_PATH=/opt/homebrew/opt/openjdk/bin
export CPPFLAGS=-/opt/homebrew/opt/openjdk/include
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_EMULATOR=$ANDROID_HOME/emulator
export ANDROID_TOOLS=$ANDROID_HOME/tools
export ANDROID_TOOLS_BIN=$ANDROID_HOME/tools/bin
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
export ANDROID_CLI=$ANDROID_HOME/cmdline-tools/latest/bin
export YVM_DIR=/usr/local/opt/yvm/versions

export PATH=$BIN_PATH:$PATH
export PATH=$USR_LOCAL_BIN_PATH:$PATH
export PATH=$BREW_PATH:$PATH
export PATH=$JDK_PATH:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM_PLUGINS="$HOME/.oh-my-zsh/custom/plugins"
export ZSH_CUSTOM_THEMES="$HOME/.oh-my-zsh/custom/themes"

export EDITOR=/usr/bin/vim

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    docker
)

kblog() {
    pbpaste | jq '.hits.hits[]._source.log' -r | awk NFD | tac
}

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM_PLUGINS/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $(brew --prefix nvm)/nvm.sh
source $(brew --prefix yvm)/yvm.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags™
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full ™list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
idea () { IDEA_CWD="$PWD" open -n -b "com.jebrains.intellij.ce" --args ./ ;}

# System
alias l="ls"
alias ll="ls -al"
alias g="grep"
alias gi="grep -i" # case insensitive grep
alias http="httpie"
alias p="pwd"

# Docker
alias dkps="docker ps"
alias dkpsa="docker ps -a"
alias dksa="docker stop \$(docker ps -a -q)"
alias dkra="docker rm \$(docker ps -a -q)"
alias dksra="docker stop \$(docker ps -a -q) && docker rm \$(docker ps -a -q)"
alias dkcb="docker compose build"
alias dkcu="docker compose up"
alias dkcud="docker compose up -d"
alias dkcrrm="docker compose run --rm"
alias dkcr="docker compose run"
alias dkc="docker compose"

# Git
alias gta="git add"
alias gtc="git commit -m"
alias gtac="git add . && git commit -m"
alias gtck="git checkout"
alias gtf="git fetch"
alias gtd="git diff"
alias gtl="git log --graph"
alias gts="git status"
alias gtps="git push"
alias gtpl="git pull"
alias gtb="git branch"
alias gtba="git branch -a"
alias gtbd="git branch -D"
alias gtrh="git reset --hard"
alias gtrb="git rebase"
alias gtrbc="git rebase --continue"
alias gtrba="git rebase --abort"
alias gtpsfwl="git push --force-with-lease"
alias gtcforce="git clean -fd"

# Gradle
alias gr='./gradlew'
alias grc='./gradlew clean'
alias grb='./gradlew build'
alias grcb='./gradlew clean && ./gradlew build'
alias grt='./gradlew test'

# React
alias cra='npx create-react-app' # --template typescript
alias cna='yarn create next-app --typescript'

# Expo
alias ex='expo'
alias exh='expo -h'
alias exi='expo init'
alias exs='expo start'
alias exsa='expo start --android'
alias exsi='expo start --ios'
alias exsw='expo start --web'

# React Native
alias rn='npx react-native'
alias rni='npx react-native init'
alias rnra='npx react-native run-android'
alias rnri='npx react-native run-ios'
alias rnd='npx @react-native-community/cli doctor'

# Xcode
alias cleardd='rm -rf ~/Library/Developer/Xcode/DerivedData/'

# Android Debug Bridge
alias adbd='adb devices'

# Cocoapods
# NOTE: sudo arch -x86_64 gem install ffi --> requirement to use pod install with M1 processors 
alias podi='arch -x86_64 pod install'

# Python
alias python='python3'

# Heroku
alias hrklg='heroku login'
alias hrkclg='heroku container:login'
alias hrkcps='heroku container:push web --app'
alias hrkcrl='heroku container:release web --app'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

