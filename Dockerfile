FROM nodered/node-red

WORKDIR /data
COPY ./data/package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY ./data/flows.json .
COPY ./data/settings.js .
COPY ./data/flows_cred.json .

WORKDIR /usr/src/node-red