FROM node:9.11

# Create public directory
WORKDIR /usr/src/app

# Install public dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle public source
COPY *.js ./
COPY public ./public

# Expose port 80
EXPOSE 80

# Start the public
CMD [ "npm", "start" ]