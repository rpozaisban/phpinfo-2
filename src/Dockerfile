FROM alpine 
WORKDIR /app
COPY src .
RUN apk add php
ENTRYPOINT /usr/bin/php
CMD -f index.php -S 0.0.0.0:8080
