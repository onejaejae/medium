FROM node:16-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

# RUN npm install -g pm2
# RUN npm install @babel/cli -g 
# RUN npm install @babel/core -g 


# RUN npm ci --only=production
ENV NODE_ENV dev

COPY ./ ./

RUN yarn build

EXPOSE 80

CMD ["yarn", "start"]