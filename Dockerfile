FROM node:13.6.0-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN chown -R node.node /run && \
  chown -R node.node /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/index.mtml

# Bundle app source
COPY . /usr/src/app

COPY --chown=node:node . .

USER node
CMD [ "npm", "start" ]
