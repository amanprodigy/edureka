from .base import *

DEBUG = True

ALLOWED_HOSTS = ['127.0.0.1',
                 'localhost',
                 'edureka.com',
                 'www.edureka.com']


DATABASES['default'] = {
    'ENGINE': 'django.db.backends.postgresql_psycopg2',
    'NAME': 'edureka',
    'USER': 'django',
    'PASSWORD': 'django',
    'HOST': 'localhost',
    'PORT': '5432'
}
