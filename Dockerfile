# Pull base image
FROM python:3.6

# Set work directory
WORKDIR /code

COPY Pipfile Pipfile.lock /code/

# Install dependencies
RUN pip install pipenv && \
    cd /code && \
    pipenv install --system && \
    pip uninstall -y pipenv

# Copy project
COPY . /code/ 
