FROM node:15.4.0-buster-slim

RUN apt-get update && apt-get install -y sudo \
    git \
    nano; \
    # create initial directory
    mkdir /var/www; \
    mkdir /var/www/html

COPY admin /var/www/html/

WORKDIR /var/www/html/admin

RUN npm install --no-interaction

CMD ["sleep","3600"]
