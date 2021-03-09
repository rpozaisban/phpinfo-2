# FROM scratch en el caso del codigo compilado de forma estatica, "Alpine" seria la libreria deseada
FROM alpine
# equivalente mkdir -p /app && cd /app
WORKDIR /app 
# copia de una carpeta de local
COPY src .
#instala el paquete php = yum install php
RUN apk add php
#php index.php (cd cargamos imagen coge el binario)
ENTRYPOINT ["/usr/bin/php"]
# crear el docker file 
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
