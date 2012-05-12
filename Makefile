
platform:=$(shell uname)

install:
	$(shell cp templates/zshrc.zsh-template ~/.zshrc)
ifeq ($(findstring CYGWIN,$(platform)),CYGWIN)
	@cmd junction -s -q "%HOME%\.oh-my-zsh" "%CD%"
endif
ifeq ($(findstring Darwin,$(platform)),Darwin)
	$(shell ln -s $PWD ~/.oh-my-zsh)
endif
