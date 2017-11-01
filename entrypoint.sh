#!/bin/sh

sed -i "s/^    src_img_root = .*$/    src_img_root = '${IMG_ROOT:-\/usr\/local\/share\/images}'/g" /etc/loris2/loris2.conf && uwsgi --http :80 --wsgi-file /var/www/loris2/loris2.wsgi --master --processes 2 --threads 2
