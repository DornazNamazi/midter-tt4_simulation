# 2 layers

# Layer 1
FROM node:latest AS builder
WORKDIR /app
COPY ./app/package*.json ./
RUN npm install
COPY ./app/ ./
RUN npm run build 
# in the end I have the /dist

# Layer 2

FROM nginx

COPY --from=builder ./app/dist /usr/share/nginx/html

# EXPOSE ??

