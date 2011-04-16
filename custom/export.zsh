
export CDPATH=~/code

export PATH=~/bin/darcs:$PATH
export PATH=~/bin/scripts:$PATH

# git
export GIT_EDITOR="$ZSH/custom/eopen.sh"

case `uname` in
    Darwin)
        export JAVA_HOME=$(/usr/libexec/java_home)
        # rvm
        [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
        ;;
    CYGWIN_NT-6.0)
        export JAVA_HOME=/cygdrive/c/Program\ Files/Java/jdk1.6.0_24
        ;;
esac

# java
export M2_HOME=~/bin/maven
export PATH=${M2_HOME}/bin:$PATH
export PATH=${JAVA_HOME}/bin:$PATH

# clojure
export PATH=~/bin/leiningen/bin:$PATH

# android
export PATH=~/bin/android-sdk/tools:$PATH
export PATH=~/bin/android-sdk/platform-tools:$PATH
export ANDROID_HOME=~/bin/android-sdk
