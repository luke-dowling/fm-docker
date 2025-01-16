# build step
FROM node:20 AS node-build
RUN mkdir /build
WORKDIR /build
COPY package-lock.json package.json ./
RUN npm ci
COPY . .

# production image
FROM gcr.io/distroless/nodejs20
COPY --from=node-build --chown=node:node /build /app
WORKDIR /app
CMD [ "index.js"]