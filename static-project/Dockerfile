FROM node AS node-build
WORKDIR /app
COPY . .
RUN npm i
RUN npm ci
RUN npm run build

FROM nginx:latest
COPY --from=node-build /app/dist /usr/share/nginx/html


# -------------------------

# my version

# # build
# FROM node:20 AS node-build
# RUN npm ci
# RUN npm run build

# # production environment
# FROM nginx:latest
# COPY ./dist /usr/share/nginx/html

# i missed the WORKDIR and COPY, this will be useful because it will copy the files from the build to the nginx folder avoiding potential errors in a more complex project
