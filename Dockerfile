FROM alpine:3.6

# update package index
RUN apk update

# install bash
RUN apk add --no-cache \
        bash \
        bash-doc \
        bash-completion

RUN echo 'PS1="┌\033[0;36m\w\033[m\n└(\u)• "' >> /root/.bashrc

CMD ["bash"]
