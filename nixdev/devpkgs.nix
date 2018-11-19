with import <nixpkgs> {};

let
  devtools = buildEnv {
    name = "devtools";
    paths = [
      ag
      fzf
      shellcheck
    ];
  };

in buildEnv {
    name = "devpkgs";
    paths = [ devtools ];
}
