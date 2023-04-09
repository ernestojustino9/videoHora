FROM node:16.13.2-alpine

# set working directory
WORKDIR /app
# WORKDIR /usr/app

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
# RUN npm install react-scripts@5.0.1 -g --silent
RUN npm install react-scripts -g --silent
# RUN npm install

# add '/app/node_modules/.bin' to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# ENV PATH /usr/src/app/node_modules/.bin:$PATH

# RUN npm run build


# add app
COPY . ./

# start app
CMD ["npm", "start"]