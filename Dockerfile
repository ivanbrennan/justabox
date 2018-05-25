FROM alpine:3.6

# update package index
RUN apk update

# install core man-pages
RUN apk add --no-cache \
        man \
        man-pages \
        mdocml-apropos \
        less \
        less-doc

ENV PAGER=less

# install bash
RUN apk add --no-cache \
        bash \
        bash-doc \
        bash-completion

ADD bashrc '/root/.bashrc'

# install networking utils
RUN apk add --no-cache \
            curl \
            curl-doc \
            jq \
            jq-doc

# install GNU grep & coreutils
RUN apk add --no-cache \
            grep \
            grep-doc \
            coreutils \
            coreutils-doc

CMD ["bash"]
