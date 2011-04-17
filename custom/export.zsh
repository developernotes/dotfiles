
export CDPATH=~/code

export PATH=~/bin/scripts:$PATH

case `uname` in
    Darwin)
        export JAVA_HOME=$(/usr/libexec/java_home)
        export GIT_EDITOR="$ZSH/custom/eopen.sh"
        [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
        ;;
    CYGWIN*)
        export CYGWIN="nodosfilewarning"
        export PATH=~/bin/sbt:$PATH
        export PATH=~/bin/scala/bin:$PATH
        export GIT_EDITOR="`cygpath -m $ZSH`//custom//eopen.sh"
        export JAVA_HOME=/cygdrive/c/Program\ Files/Java/jdk1.6.0_24
        export PATH=/cygdrive/c/Program\ Files/MySQL/MySQL\ Server\ 5.1/bin:$PATH
        export PATH=/cygdrive/c/Eclipse/plugins/net.rim.ejde/vmTools:$PATH
        ;;
esac

export PATH=~/bin/darcs:$PATH

# java
export M2_HOME=~/bin/maven
export PATH=~/bin/ant/bin:$PATH
export PATH=${M2_HOME}/bin:$PATH
export PATH=${JAVA_HOME}/bin:$PATH

# clojure
export PATH=~/bin/leiningen/bin:$PATH

# android
export PATH=~/bin/android-sdk/tools:$PATH
export PATH=~/bin/android-sdk/platform-tools:$PATH
export ANDROID_HOME=~/bin/android-sdk
