#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Export Django settings module if needed
export DJANGO_SETTINGS_MODULE=demo.settings

# Collect static files
python manage.py collectstatic --noinput
