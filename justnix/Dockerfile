FROM lnl7/nix:latest

RUN nix-env --file '<nixpkgs>' --install --attr glibcLocales

ENV LOCALE_ARCHIVE=/root/.nix-profile/lib/locale/locale-archive \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

COPY boxpkgs.nix /tmp/

RUN nix-env --file /tmp/boxpkgs.nix --install \
 && nix-collect-garbage --delete-old \
 && nix-store --verify --check-contents \
 && rm -r /tmp/*

COPY bashrc /root/.bashrc

ENV PAGER=less \
    DOTFILES_REV=b909731990626fe64b438c567677c5fd9d03f166

RUN curl https://raw.githubusercontent.com/ivanbrennan/dotfiles/${DOTFILES_REV}/shell/inputrc -o /root/.inputrc
