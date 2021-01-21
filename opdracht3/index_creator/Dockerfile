
# Here we are creating an image for python alphine image.(https://hub.docker.com/r/library/python/)
FROM python

# Copying the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

# WORKDIR is nothing but current directory (cd app)
WORKDIR /app

# Install the requirements in the current directory.
RUN pip install --no-cache-dir -r requirements.txt

# Copying the entire application to the docker container in the app directory.
COPY . /app

# Setting environmental path to app directory. path environment variables tells shell,
# which directories to search for executable files.
ENV PATH /app:$PATH

# Make docker-compose wait for container dependencies be ready
# Solution 1: use dockerize tool -----------------------------
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

# It executes the command python app.py in the app directory.
CMD ["./startup_script.sh"]