
export PATH=/usr/local/bin:/usr/bin:$PATH
export PATH=~/bin/scripts:$PATH
export PATH=~/bin:$PATH
export CDPATH=$CDPATH:~/code

export EDITOR="$ZSH/custom/eopen.sh"

case `uname` in
    Darwin)
        export PATH=~/bin/dex2jar:$PATH
        export PATH=/Applications/kdiff3.app/Contents/MacOS:$PATH
        export JAVA_HOME=$(/usr/libexec/java_home)
        export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
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
        export PATH=/cygdrive/c/Program\ Files\ \(x86\)/KDiff3:$PATH
        export PATH=/cygdrive/c/Program\ Files\ \(x86\)/nodejs:$PATH
        export TERM=cygwin
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
export PATH=~/.lein/bin:$PATH

# android
export PATH=~/bin/android-sdk/tools:$PATH
export PATH=~/bin/android-sdk/platform-tools:$PATH
export ANDROID_HOME=~/bin/android-sdk
export ANDROID_NDK_ROOT=~/bin/android-ndk-r7
export PATH=$ANDROID_NDK_ROOT:$PATH
