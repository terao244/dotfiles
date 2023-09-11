{
  git = {
    svnSupport = true;
  }; 


  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
	git
	subversion
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
	fd
	gitAndTools.diff-so-fancy
	hexyl
	htop
	iperf3
	gitui
	nmap
	shfmt
	python39
	poetry
	gtkwave
	zlib
	eza
	git-fame
      ];
    };
  };

  programs.zsh = {
    enable = true;
  };
}
