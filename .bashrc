# .bashrc

# Allow scripts in home
export PATH="$PATH:/home/hduser"
export PATH="$PATH:/usr/bin/perl"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source the Hadoop runtime
if [ -f ./.hadooprc ]; then
        . ./.hadooprc
fi

# Java Home
export JAVA_HOME="/usr/lib/java"
export PATH="$PATH:$JAVA_HOME/bin"

# History ENV
export HISTSIZE=100
export HISTFILESIZE=400
export HISTIGNORE="h:history:pwd:exit:df:ls:ls -la:ll"

# User specific aliases and functions
#export PS1="\W \u> "

