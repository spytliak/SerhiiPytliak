FROM node:10.15.3

LABEL NAME="spytliak/sails-rest-api"
LABEL VERSION="0.0.0"
LABEL MAINTEINER="Serhii Pytliak" 

ENV HOST="127.0.0.1"
ENV PORT="8888"

RUN npm install http-server -g

HEALTHCHECK --interval=5s --timeout=3s --start-period=3s --retries=3 CMD [ "curl", "127.0.0.1:8888" ]

EXPOSE 8888
ENTRYPOINT [ "http-server", "-a", "localhost", "-p", "8888" ]
