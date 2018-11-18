with import <nixpkgs> {};

let
  devtools = buildEnv {
    name = "devtools";
    paths = [
      ag
      fzf
    ];
  };

in buildEnv {
    name = "devpkgs";
    paths = [ devtools ];
}
