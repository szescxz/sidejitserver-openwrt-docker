FROM python:3-alpine

RUN apk add --no-cache gcc python3-dev musl-dev libffi-dev linux-headers git rust cargo g++ openssl-dev zlib-dev jpeg-dev make && \
    git clone https://github.com/nythepegasus/SideJITServer && \
    cd SideJITServer && \
    echo "ipsw-parser<1.4.0" >> requirements.txt && \
    pip install . && \
    cd .. && \
    rm -rf SideJITServer && \
    apk del gcc python3-dev musl-dev libffi-dev linux-headers git rust cargo g++ openssl-dev zlib-dev jpeg-dev make
