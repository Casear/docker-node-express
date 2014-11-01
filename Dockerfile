FROM dockerfile/python

# Install Node.js
RUN \
  add-apt-repository ppa:chris-lea/node.js && \
  apt-get update && \
  apt-get install nodejs -y


RUN \
  npm install -g express-generator -g && \
  express /data/website && \
  cd /data/website && \
  npm install


WORKDIR /data/website

# Define default command.
CMD ["bash"]
CMD ["npm","start"]
