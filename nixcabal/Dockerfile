FROM ivanbrennan/nixdev:latest

RUN nix-env --file '<nixpkgs>' --install --attr cabal2nix \
 && nix-collect-garbage --delete-old \
 && nix-store --verify --check-contents
