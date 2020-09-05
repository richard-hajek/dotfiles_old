echo "Sourcing ~/.zshrc"

. ~/.config/shellrc

export ZSH=/usr/share/oh-my-zsh/

ZSH_THEME=robbyrussell

plugins=(
	archlinux 
	asdf 
	bundler 
	docker 
	jsontools 
	vscode 
	web-search 
	tig 
	kubectl
	gitfast 
	colored-man-pages 
	colorize 
	command-not-found 
	cp 
	dirhistory 
	autojump 
	sudo
	rails
	git
	# git-prompt
	# ruby
	#zsh-syntax-highlighting
	)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

source $ZSH/oh-my-zsh.sh

setopt extendedglob
setopt COMPLETE_ALIASES

. ~/.config/shellrc
itr='cd `iter`'
