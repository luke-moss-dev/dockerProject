FROM python:3.7.3-stretch

# Establish Working Directory
WORKDIR /app

# Copy local source code into working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt