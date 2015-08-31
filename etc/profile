# /etc/profile

# Set the initial path
export PATH=/bin:/usr/bin
export PS1="\u@\h \w$ "

if [ `id -u` -eq 0 ] ; then
    PATH=/bin:/sbin:/usr/bin:/usr/sbin
    PS1="\u@\h \w# "
    unset HISTFILE
fi

# Setup some environment variables.
export USER=`id -un`
export LOGNAME=$USER
export HOSTNAME=`/bin/hostname`
export HISTSIZE=1000
export HISTFILESIZE=1000
export PAGER='/bin/more '
export EDITOR='/bin/vi'

echo "********************"
echo "Welcome to ${HOSTNAME}..."
echo "********************"

# End /etc/profile
