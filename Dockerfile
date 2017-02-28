FROM node:6
WORKDIR /src
ADD . /src
RUN cd /src \
 && npm install \
 && npm run build \
 && npm cache clear \
 && rm -rf ~/.npm \
 && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["npm", "run", "dashboard"]
