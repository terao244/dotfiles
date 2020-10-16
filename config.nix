{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
	git
	zsh
	tmux
	tig
	barrier
	bat
	tree
	ripgrep
        jq
	ranger
	ueberzug
	subversion
	du-dust
	nodejs
	yarn
	fd
	gitAndTools.diff-so-fancy
	hexyl
	htop
      ];
    };
  };
}
