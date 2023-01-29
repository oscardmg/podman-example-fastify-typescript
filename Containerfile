FROM node:16-alpine


WORKDIR /usr/src/app
COPY package*.json ./
COPY tsconfig.json ./
RUN npm install
COPY src ./src

EXPOSE 3000

# Bundle app source

CMD [ "npm", "start" ]
#CMD [ "node"]

# podman build --platform=linux/amd64 -t fastify-example .
# podman run --platform=linux/amd64 --rm -dp 3000:3000 --name fastify-example fastify-example