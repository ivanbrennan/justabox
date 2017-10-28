# just a box

## usage
rebuild and run
```sh
# cd /path/to/this/repo
docker image rm justabox 2>/dev/null; docker build --tag justabox . && docker run --name eider --rm --interactive --tty justabox
```

inside the container
```sh
# list installed packages
apk info
apk info -v
apk info -vv

# detach
Ctrl-P Ctrl-Q
# reattach
docker attach eider
```
