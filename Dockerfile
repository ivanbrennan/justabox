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

CMD ["bash"]
