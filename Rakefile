
desc "install zsh configuration"
task :install do
  sh "cp templates/zshrc.zsh-template ~/.zshrc"
  if RUBY_PLATFORM.include?("cygwin") || RUBY_PLATFORM.include?("mingw")
    link, source = cygpath("$HOME"), cygpath("$PWD")
    sh "junction -s '#{link}\\.oh-my-zsh' '#{source}'"
  else
    sh "ln -s $PWD ~/.oh-my-zsh"
  end

end

def cygpath(path)
  `(cygpath -w #{path})`.gsub("\n", "")
end
