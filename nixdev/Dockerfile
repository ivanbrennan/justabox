FROM ivanbrennan/justnix:latest

COPY bashrc devpkgs.nix /tmp/

RUN nix-env --file /tmp/devpkgs.nix --install \
 && cat /tmp/bashrc >> /root/.bashrc \
 && curl https://raw.githubusercontent.com/ivanbrennan/dotfiles/${DOTFILES_REV}/fzf/key-bindings.bash >> /root/.bashrc

ENV NIXBOX_REV=9a7f9e4c2fef707ca7fd9080f0450cafba73655f

RUN curl --create-dirs --output "/tmp/overlay/#1.nix" \
    "https://raw.githubusercontent.com/ivanbrennan/nixbox/${NIXBOX_REV}/overlays/vim/{core-package,default,dotvim,plugins}.nix" \
 && nix-env --file '<nixpkgs>' --install --from-expression \
    'pkgs: (pkgs { overlays = [ (import /tmp/overlay) ]; }).vim-configured' \
 && nix-collect-garbage --delete-old \
 && nix-store --verify --check-contents \
 && rm -r /tmp/*
