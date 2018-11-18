with import <nixpkgs> {};

let
  boxtools = buildEnv {
    name = "boxtools";
    paths = [
      bash-completion
      less
      man
      manpages
      nix-bash-completions
      nix-prefetch-git
    ];
  };

  boxdocs = buildEnv {
    name = "manpages-hack";
    paths = [
      bashInteractive.man
      curl.man
      jq.man
    ];
    extraOutputsToInstall = [ "man" ];
  };

in buildEnv {
    name = "boxpkgs";
    paths = [ boxtools boxdocs ];
}
