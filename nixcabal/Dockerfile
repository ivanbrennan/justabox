FROM ivanbrennan/nixdev:latest

RUN nix-env --file '<nixpkgs>' --install --attr cabal2nix cabal-install \
 && nix-collect-garbage --delete-old \
 && nix-store --verify --check-contents
