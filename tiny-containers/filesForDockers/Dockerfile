# build step
FROM node:20 AS node-build
RUN mkdir /build
WORKDIR /build
COPY package-lock.json package.json ./
RUN npm ci
COPY . .

# production image
FROM gcr.io/distroless/nodejs:20
RUN apk add --update nodejs
RUN addgroup -S node && adduser -S node -G node
USER node
RUN mkdir /home/node/code
WORKDIR /home/node/code
copy --from=node-build --chown=node:node /build .
CMD ["node", "index.js"]