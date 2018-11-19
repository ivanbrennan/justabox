FROM alpine:3.8

# update package index
RUN apk update

# install core man-pages
RUN apk add --no-cache \
        less \
        less-doc \
        man \
        man-pages \
        mdocml-apropos

# install bash
RUN apk add --no-cache \
        bash \
        bash-completion \
        bash-doc

# install networking utils
RUN apk add --no-cache \
            curl \
            curl-doc \
            jq \
            jq-doc

# install GNU grep & coreutils
RUN apk add --no-cache \
            coreutils \
            coreutils-doc \
            grep \
            grep-doc

COPY bashrc /root/.bashrc

ENV PAGER=less \
    DOTFILES_REV=b909731990626fe64b438c567677c5fd9d03f166

RUN curl https://raw.githubusercontent.com/ivanbrennan/dotfiles/${DOTFILES_REV}/shell/inputrc -o /root/.inputrc

CMD ["bash"]
