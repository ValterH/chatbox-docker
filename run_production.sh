#!/usr/bin/env sh


python /code/manage.py makemigrations
echo "starting migrations"
python /code/manage.py migrate
echo "finished migrating"
python /code/manage.py collectstatic
echo "collected static files"
echo "starting uwsgi"
uwsgi /code/uwsgi.ini
