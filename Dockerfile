FROM ubuntu

RUN mkdir -p /root/.wrangler/config

RUN apt-get update && apt-get install -y curl \
  && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
  && apt-get install -y nodejs zip nano wget \
  && yes | npm install -g wrangler postal-mime mimetext
