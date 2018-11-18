# just a box

``ivanbrennan/justalpine``: Alpine Linux with Bash and a basic toolchain (curl, jq, etc.)

## scripts

```sh
# build and run a test container
script/test justalpine

# build an image and push it in a separate step
script/build justalpine
script/push justalpine

# build and push in one go
script/release justalpine

# run an image
script/run justalpine

# remove an image
script/clean justalpine
```
