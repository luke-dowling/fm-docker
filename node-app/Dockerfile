FROM node:20

USER node

WORKDIR /home/node/code

# if the package.json file changes, the npm ci command will be run again
# all the cacheable commands should be run before any other command that might update the cache
COPY --chown=node:node package*.json ./

RUN npm ci

COPY --chown=node:node . .

CMD ["node", "index.js"]