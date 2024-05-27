# Latest node version for the moment.
# Alpine are lighter than classic.
FROM node:22-alpine

# create working directory.
RUN mkdir -p /vue
WORKDIR /vue

# Update and install dependencies
RUN apk update && apk upgrade
RUN apk add git

# Copy the app
COPY . .
RUN npm install
RUN npm run build

EXPOSE 4000

# Configure host and port manually.
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=4000

CMD [ "npm", "run", "dev" ]