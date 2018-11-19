with import <nixpkgs> {};

let
  boxtools = buildEnv {
    name = "boxtools";
    paths = [
      bash-completion
      binutils
      diffutils
      file
      htop
      less
      lsof
      man
      manpages
      nix-bash-completions
      nix-prefetch-git
      psmisc
      socat
      tcpdump
      tree
      unzip
      wget
      xsel
      zip
    ];
  };

  boxdocs = buildEnv {
    name = "manpages-hack";
    paths = [
      bashInteractive.man
      binutils.man
      curl.man
      jq.man
    ];
    extraOutputsToInstall = [ "man" ];
  };

in buildEnv {
    name = "boxpkgs";
    paths = [ boxtools boxdocs ];
    meta.priority = 10;
}
