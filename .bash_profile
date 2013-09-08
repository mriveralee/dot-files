export NODE_PATH="/usr/local/lib/node";
export PATH="/usr/local/share/npm/bin:$PATH";


# PYTHON  & Maya Env Variables
export PYTHONPATH="/usr/bin/python:/System/Library/Frameworks/Python.framework/Versions/2.7/bin"
export MAYA_LOCATION="/Applications/Autodesk/maya2013/Maya.app/Contents"
export PYTHONDEV="/Library/Python/2.7/site-packages"
export PATH="$MAYA_LOCATION/bin:$PATH"
export PYTHONPATH="$PYTHONPATH:$PYTHONDEV"

#echo {$PATH};


#Vim Colors / terminal
export TERM=xterm-256color



# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}


# Stash Pull for Git
alias stash-pull='git stash; git pull --rebase; git stash pop'

# CIS110 - Course Folder
alias cis110='cd ~/introcs'


# Init rbenv for non-stock-OS, harder, better, faster, stronger Ruby
#eval "$(rbenv init -)"

# Include XCode's git
export PATH="/Applications/Xcode.app/Contents/Developer/usr/libexec/git-core:$PATH"

# Include ADB
# export PATH="~/android-sdk-macosx/platform-tools:$PATH"
# export PATH="~/android-sdk-macosx/tools:$PATH"¬

#export ANDROID_SDK=${HOME}/android-sdk-macosx
#export ANDROID_NDK=${HOME}/android-ndk-r8d
#export ANDROID_HOME=$ANDROID_SDK
#export PATH=$PATH:$ANDROID_SDK/tools:${ANDROID_SDK}/platform-tools

 #Include Python stuffs
export PATH="/usr/local/share/python:$PATH"

# TEMPORARY PLACEMENT OF ALIASES (todo: relocate to .aliases?)
alias idea='open -a /Applications/IntelliJ\ IDEA\ 12\ CE.app'

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# Autocomplete Grunt commands
which grunt > /dev/null && eval "$(grunt --completion=bash)"

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Git completion for commands and branch names
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi



