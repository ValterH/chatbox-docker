#!/usr/bin/env sh


python /code/manage.py makemigrations
echo "starting migrations"
python /code/manage.py migrate
echo "finished migrating"
python /code/manage.py collectstatic
echo "collected static files"
python /code/manage.py loaddata data.json
echo "preloaded data"
python /code/manage.py rebuild_index --noinput
echo "built search index"
echo "starting uwsgi"
uwsgi /code/uwsgi.ini


