
desc "install zsh configuration"
task :install do
  sh "cp templates/zshrc.zsh-template ~/.zshrc"
  sh "cp -R . ~/.oh-my-zsh"
  if RUBY_PLATFORM.include?("cygwin") || RUBY_PLATFORM.include?("mingw")
    sh "junction -s %HOME%\dotfiles %CD%\custom"
  else
    sh "ln -s custom ~/dotfiles"
  end
end
