FROM debian

RUN apt-get update
RUN apt-get install -y curl gnupg

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs build-essential

# Enter in the project directory
ADD . /honeypot/
WORKDIR /honeypot

RUN npm install package.json
CMD nodejs index.js
