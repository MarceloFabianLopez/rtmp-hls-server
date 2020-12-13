#!/bin/sh
echo "keys";
echo $key_facebook;
echo $key_youtube;
echo "keys";
sed -i.bak "s/key_youtube/$key_youtube/g" /etc/nginx/nginx.conf;
sed -i "s/key_facebook/$key_facebook/g" /etc/nginx/nginx.conf;
cat /etc/nginx/nginx.conf;
#exec nginx -t ;

exec nginx -g 'daemon off;'


#if [$key_youtube];then sed -i.bak "s/key_youtube/$key_youtube/g" /etc/nginx/nginx.conf;else echo "parametros vacios" ;fi;
#if [$key_facebook];then sed -i.bak "s/key_facebook/$key_facebook/g" /etc/nginx/nginx.conf;else echo "parametros vacios" ;fi;
#nginx -g daemon off ;
