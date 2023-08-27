#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic --no-input
uwsgi --http :8000 --master --enable-threads --processes 4 --module mysite.wsgi

#supervisord -c /etc/supervisor/supervisord.conf
#supervisorctl start all

