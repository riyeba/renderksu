#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
./manage.py createsuperuser2 --username user --password 123 --noinput --email 'blank@email.com'
