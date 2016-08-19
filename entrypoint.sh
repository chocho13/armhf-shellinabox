#!/bin/sh

set -e

if [ $SIAB_USER ]; then
    if [ $SIAB_PASS ]; then
        echo -e "${SIAB_PASS}\n${SIAB_PASS}" | adduser -s /bin/sh $SIAB_USER
    else
        echo -e "${SIAB_USER}\n${SIAB_USER}" | adduser -s /bin/sh $SIAB_USER
    fi
else
    if [ $SIAB_PASS ]; then
        echo -e "${SIAB_PASS}\n${SIAB_PASS}" | adduser -s /bin/sh shellboxuser
    else
        echo -e "shellboxuser\nshellboxuser" | adduser -s /bin/sh shellboxuser
    fi
fi
COMMAND="shellinaboxd -s /:LOGIN --disable-ssl"
if [ "$@" = "shellinabox" ]; then
	echo "Executing: ${COMMAND}"
	exec ${COMMAND}
else
	echo "Not executing: ${COMMAND}"
	echo "Executing: ${@}"
	exec $@
fi
