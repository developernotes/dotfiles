
desc "install zsh configuration"
task :install do
  sh "cp templates/zshrc.zsh-template ~/.zshrc"
  if RUBY_PLATFORM.include?("cygwin") || RUBY_PLATFORM.include?("mingw")
    home, dotfiles_root = cygpath("$HOME"), cygpath("$PWD")
    sh "junction -s '#{home}\\.oh-my-zsh' '#{dotfiles_root}'"
  else
    sh "ln -s $PWD ~/.oh-my-zsh"
  end

end

def cygpath(path)
  `(cygpath -w #{path})`.gsub("\n", "")
end
