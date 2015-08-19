# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
source ~/.liveramp_bin_profile
export HADOOP_LZO=/usr/lib/hadoop-lzo

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
HOST='\033[02;36m\]\h'; HOST=' '$HOST
TIME='\033[01;31m\]\t \033[01;32m\]'
LOCATION=' \033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \033[00;33m\]$(git_branch)\[\033[00m\]\n\$ '
PS1=$TIME$USER$HOST$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'

ls --color=al > /dev/null 2>&1 && alias ls='ls -F --color=al' || alias ls='ls -G'

# Generic Aliases
alias ll='ls -latr'                                          # List all file in long list format by modification time
alias ..='cd ..'                                             # Go up one directory
alias ...='cd ../..'                                         # Go up two directories
alias ....='cd ../../..'                                     # Go up three directories
alias -- -='cd -'                                            # Go back
alias c='clear'                                              # Clear Screen
alias k='clear'                                              # Clear Screen
alias cls='clear'                                            # Clear Screen
alias _="sudo"                                               # Execute with sudo
alias q='exit'                                               # Logout
 
# Common Hadoop File System Aliases
alias hf="hadoop fs"                                         # Base Hadoop fs command
alias hfcat="hf -cat"                                        # Output a file to standard out
alias hfchgrp="hf -chgrp"                                    # Change group association of files
alias hfchmod="hf -chmod"                                    # Change permissions
alias hfchown="hf -chown"                                    # Change ownership
alias hfcfl="hf -copyFromLocal"                              # Copy a local file reference to HDFS
alias hfctl="hf -copyToLocal"                                # Copy a HDFS file reference to local
alias hfcp="hf -cp"                                          # Copy files from source to destination
alias hfdu="hf -du"                                          # Display aggregate length of files
alias hfdus="hf -dus"                                        # Display a summary of file lengths
alias hfget="hf -get"                                        # Get a file from hadoop to local
alias hfgetm="hf -getmerge"                                  # Get files from hadoop to a local file
alias hfls="hf -ls"                                          # List files
alias hfll="hf -lsr"                                         # List files recursivly
alias hfmkdir="hf -mkdir"                                    # Make a directory
alias hfmv="hf -mv"                                          # Move a file
alias hfput="hf -put"                                        # Put a file from local to hadoop
alias hfrm="hf -rm"                                          # Remove a file
alias hfrmr="hf -rmr"                                        # Remove a file recursivly
alias hfsr="hf -setrep"                                      # Set the replication factor of a file
alias hfstat="hf -stat"                                      # Returns the stat information on the path
alias hftail="hf -tail"                                      # Tail a file
alias hftest="hf -test"                                      # Run a series of file tests. See options
alias hftouch="hf -touchz"                                   # Create a file of zero length

#Git Aliases
alias gitco="git checkout"
alias gitpo="git push origin"
alias gitcm="git commit -m"
alias gits="git status"
alias gitu="git add -u"
alias gpcm="git pull central master"

#Jobjar
alias jobjar="mvn clean package -P deploy-jobjar -Ddeploy.host=ds-jobs.liveramp.net"

#initialize local db
alias initdb="mvn liveramp-build:init-db"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
launchctl setenv JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


