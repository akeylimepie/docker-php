#!/bin/sh
set -e

export SCRIPT_NAME=/healthcheck
export SCRIPT_FILENAME=/healthcheck
export REQUEST_METHOD=GET

if cgi-fcgi -bind -connect 127.0.0.1:9000; then
	exit 0
fi

exit 1
