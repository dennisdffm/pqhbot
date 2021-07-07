FROM nodered/node-red

WORKDIR /data
COPY ./Data/package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY ./Data/flows.json .
COPY ./Data/settings.js .
COPY ./Data/flows_cred.json .

WORKDIR /usr/src/node-red