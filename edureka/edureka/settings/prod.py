from .base import *

DEBUG = False

ADMINS = (
    ('Aman Srivastava', 'amanprodigy@gmail.com'),
)

ALLOWED_HOSTS = ['.edureka.com']

DATABASES['default'] = {
    'ENGINE': 'django.db.backends.postgresql_psycopg2',
    'NAME': 'edureka',
    'USER': 'django',
    'PASSWORD': 'django',
    'HOST': 'localhost',
    'PORT': '5432'
}

"""
Run the uwsgi server with the following line

sudo uwsgi --module=edureka.wsgi:application \
--env=DJANGO_SETTINGS_MODULE=edureka.settings.prod \
--master --pidfile=/tmp/project-master.pid \
--http=127.0.0.1:8005 \
--uid=1000 \
--wsgi-file  /Users/aman/Coding/django2byexample/edureka/edureka/wsgi.py \
--virtualenv=/Users/aman/miniconda2/envs/edureka3.5
"""

SECURE_SSL_REDIRECT = True
CSRF_COOKIE_SECURE = True
