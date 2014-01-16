# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename "/Users/$USER/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
bindkey -e
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# End of lines configured by zsh-newuser-install

# Colour and prompt settings
git_prompt() {
  br=$(git branch 2>/dev/null | awk '/^\*/ { print $2 }')
  if [[ -n $br ]]; then
    echo ' ['$br']'
  fi
}

setopt prompt_subst
autoload -U colors && colors
export PROMPT=%{$fg[red]%}%B%n%b%{$reset_color%}' @ '%{$fg[blue]%}%B%m%b%{$fg[green]%}'$(git_prompt)'%{$reset_color%}%#' '
#export PROMPT=%{$fg[red]%}%B%n%b%{$reset_color%}' @ '%{$fg[blue]%}%B%m%b%{$reset_color%}%#' '
export RPROMPT=%{$fg[green]%}%~' '%T%{$reset_color%}
autoload -U promptinit
promptinit

export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export EDITOR=vim
export LESS=R

LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.svgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.mat=00;36:';
export LS_COLORS

# Aliases
alias c='clear'
alias cd..='cd ..'
alias f='finger'
alias g='groups'
alias ls='ls -G'
alias l='ls -t'
alias la='ls -a'
alias ll='ls -l'
alias lh='ls -lsh'
alias zrc='cp -f ~/.zshrc /tmp/.zshrc; vim /tmp/.zshrc; if [ -n "`diff ~/.zshrc /tmp/.zshrc`" ]; then mv /tmp/.zshrc ~/.zshrc; source ~/.zshrc; fi'
alias x='exit'
alias eclipse='java -jar /usr/lib/eclipse/startup.jar'
alias psf='ps -e | grep $1';
alias up='cd ..';
alias grep='grep --color=auto'
alias frem='free -m'
alias sl='sl -e'
alias wget='curl -O'
alias please='sudo '
alias json-pretty-print='python -mjson.tool'
alias mvim='/usr/local/bin/mvim --remote-tab'
alias see='view'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'
alias gk='git checkout'
alias gr='git reset'
alias gpl='git pull'
alias gps='git push'
alias gsh='git stash'
alias gsp='git stash pop'
alias jsl='jsl -process'
alias ip="ifconfig | grep 'inet ' | awk -F ' ' '{print \$2}'"

# CPAN config
export PERL_LOCAL_LIB_ROOT="/usr/local/perl5";
export PERL_MB_OPT="--install_base "/usr/local/perl5"";
export PERL_MM_OPT="INSTALL_BASE=/usr/local/perl5";
export PERL5LIB="/usr/local/perl5/lib/perl5";
export PATH="/usr/local/lib/perl5/bin:$PATH";

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export ECLIPSE_HOME='/software/eclipse/';

# added by travis gem
[ -f /Users/$USER/.travis/travis.sh ] && source /Users/$USER/.travis/travis.sh
