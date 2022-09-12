{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
	git
	zsh
	tmux
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
	fd
	gitAndTools.diff-so-fancy
	hexyl
	htop
	iperf3
	gitui
	nmap
	shfmt
	python39
	python39Packages.pip
	python39Packages.poetry
	zlib
	gtkwave
	exa
      ];
    };
  };
}
