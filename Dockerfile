# use the offical node.js image 
FROM node:18-alpine

# setup the working directory in the container 
WORKDIR /

#copy the package.json and dependies 
COPY package*.json ./

# copy all the app files 
COPY . .

#expose the port the app is running on 
EXPOSE 3000

# run our app with the command 
CMD ["node", "app.js"]

