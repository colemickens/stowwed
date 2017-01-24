macup() {
	brew update; brew upgrade
}

mac_bootstrap() {
	brew install autossh cmake curl ffmpeg gimp git htop jsonnet mercurial \
		mitmproxy mobile-shell neofetch sshfs sshuttle stow \
		subversion tmux wget watch

	# neovim
	brew tap neovim/neovim
	 --HEAD --with-release neovim
	brew update
	brew reinstall --HEAD neovim

	# record-query-git
	brew tap dflemstr/tools
	brew install --HEAD rq

	# fonts
	brew tap caskroom/fonts
	brew cask install --force font-courier-prime font-fira-code \
		font-fira-mono font-hack font-hasklig font-source-code-pro
}
