FROM alpine:3.16.0

RUN apk add --no-cache python3-dev \
    && apk add py3-pip

WORKDIR /APPS/sgbcontab

COPY . .

RUN pip --no-cache-dir install -r requirements.txt

CMD [ "python3", "app.py" ]

