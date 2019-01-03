# Pull base image
FROM python:3.6

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV VIRTUAL_HOST chatbox
ENV LETSENCRYPT_HOST chatbox
ENV LETSENCRYPT_EMAIL vh9691@student.uni-lj.si

# Set work directory
WORKDIR /code

# Install dependencies
RUN pip install --upgrade pip
RUN pip install pipenv
COPY ./Pipfile /code/Pipfile
RUN pipenv install --deploy --system --skip-lock --dev

# Copy project
COPY . /code/ 