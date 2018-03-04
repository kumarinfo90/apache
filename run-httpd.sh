
#/bin/bash

rm -rf /run/httpd* /tmp/httpd*

exec /usr/bin/apachectl -DFOREGROUND

