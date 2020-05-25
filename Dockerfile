FROM node:alpine
RUN [ -f "/usr/bin/apt-get" ] && apt-get update && apt-get install -y wget unzip git || apk add wget unzip git

# Create folder for python-paho-template ..
RUN mkdir -p /tmp/python-paho-template

# Download and setup python-paho-template ..
RUN wget https://github.com/asyncapi/python-paho-template/archive/v0.2.2.zip && \
    unzip v0.2.2.zip && \
    mv python-paho-template-0.2.2/* /tmp/python-paho-template/ && \
    rm -r python-paho-template-* && rm v0.2.2.zip

RUN cd /tmp/python-paho-template && npm install -g @asyncapi/generator

WORKDIR /tmp/python-paho-template/code

COPY *.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/create-code.sh
ENTRYPOINT ["/usr/local/bin/create-code.sh"]
