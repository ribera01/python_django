#!/bin/bash
# entrypoint.sh

# Run database migrations and collect static files
python manage.py migrate
python manage.py collectstatic --noinput

# Execute the CMD specified in the Dockerfile
exec "$@"