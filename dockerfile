FROM    bndao/node:latest

# Installing app dependencies
COPY    package.json /home/bndao/app_v1/package.json
RUN     cd /home/bndao/app_v1/ ; npm install

# Bundle app source
COPY    src /home/bndao/app_v1/src

# App binds to port 8080 so need to EXPOSE 8080 to have it mapped by the docker daemon
EXPOSE  8080

CMD     ["node", "/home/bndao/app_v1/src/index.js"]
