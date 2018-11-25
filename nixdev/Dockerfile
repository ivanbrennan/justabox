FROM ivanbrennan/justnix:latest

COPY bashrc devpkgs.nix /tmp/

RUN nix-env --file /tmp/devpkgs.nix --install \
 && cat /tmp/bashrc >> /root/.bashrc \
 && curl https://raw.githubusercontent.com/ivanbrennan/dotfiles/${DOTFILES_REV}/fzf/key-bindings.bash >> /root/.bashrc

ENV NIXBOX_REV=cbd8e604f59f107711daca543f92b7614aa84a88

RUN curl --create-dirs --output "/tmp/overlay/#1" \
    "https://raw.githubusercontent.com/ivanbrennan/nixbox/${NIXBOX_REV}/overlays/vim/{core-package.nix,default.nix,dotvim.nix,plugins.json,plugins.nix}" \
 && nix-env --file '<nixpkgs>' --install --from-expression \
    'pkgs: (pkgs { overlays = [ (import /tmp/overlay) ]; }).vim-configured' \
 && nix-collect-garbage --delete-old \
 && nix-store --verify --check-contents \
 && rm -r /tmp/*
