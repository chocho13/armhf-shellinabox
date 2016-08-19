* [`latest` is the latest packaged stable compiled version (currently 2.20)](https://github.com/chocho13/armhf-shellinabox/blob/master/Dockerfile)

[Docker](https://www.docker.com/) image for [shellinabox](https://github.com/shellinabox/shellinabox) for armhf based on [troyfontaine/armhf-alpinelinux:3.4](https://hub.docker.com/r/troyfontaine/armhf-alpinelinux/)

### Usage

All mounts and ports are optional and samba will work even with only:

    $ docker run chocho13/armhf-shellinabox

... however that way port used to connect to server is not exposed.

If you want setup specific user and password, you have to set them on docker run command, if not, defaults user and password will be used (shellboxuser / shellboxuser)

... and start using this command:

    $ docker run -d \
        -p 4200:4200 \
        -e SIAB_PASS=somepass \
        -e SIAB_USER=someuser \
        chocho13/armhf-shellinabox

... to have shellinabox server running default port 4200 

It is probably a good idea to add `--restart=always` so the container restarts if it goes down.

Feedbacks

Having more issues? [Report a bug on GitHub.](https://github.com/chocho13/armhf-samba/issues)
