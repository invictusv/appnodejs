# Version node
FROM node:17

#Creating an application directory
WORKDIR /usr/src/app

# Dependency setting
# the asterisk symbol ("*") is used to
# copy both files: package.json and package-lock.json
COPY package*.json ./

RUN npm install
# If you are building an assembly for production
# RUN npm ci --only=production

# Copy the source code
COPY . .

# App listen to port 8080
EXPOSE 8080

# The CMD contains all the necessary environment variables and instructions for starting the application
CMD [ "node", "server.js" ]