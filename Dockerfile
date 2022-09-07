# Base Image
From node:12.18.1

#Getting System Ready to install dependencies
RUN apt-get clean \
    && apt-get -y update

# Making /app dir as working dir
WORKDIR /app

# Adding complete files and dirs in app dir in container
ADD . /app/

# Installing dependencies
RUN npm install 
RUN npm install mongodb -g
RUN npm install nodemon -g
RUN npm install cors -g

# Starting Server
CMD ["node", "app.js"]
