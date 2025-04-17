FROM python:3.13.3-slim

# Set working directory
WORKDIR /app

# Copy your Django project code
COPY . $WORKDIR

# Install python requirements
RUN python -m pip install -r requirements.txt

# Expose Django’s default port
EXPOSE 8000

# Run django app in docker
ENTRYPOINT ["/bin/sh", "-c", "cd babyshop_app && python manage.py migrate --noinput && python manage.py runserver 0.0.0.0:8000"]