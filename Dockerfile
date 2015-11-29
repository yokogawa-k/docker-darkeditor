FROM node:0.12
MAINTAINER Kazuya Yokogawa "yokogawa-k@klab.com"

RUN git clone --branch enhancements https://github.com/codeinthedark/editor.git \
 && cd editor \
 && npm install

WORKDIR /editor
ENTRYPOINT ["/editor/node_modules/.bin/gulp"]
CMD ["serve"]
