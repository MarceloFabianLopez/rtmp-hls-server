#!/bin/sh

if [$key_youtube];then sed -i.bak "s/key_youtube/$key_youtube/g" /etc/nginx/nginx.conf;else echo "parametros vacios" ;fi;
if [$key_facebook];then sed -i.bak "s/key_facebook/$key_facebook/g" /etc/nginx/nginx.conf;else echo "parametros vacios" ;fi;
nginx -g daemon off;
