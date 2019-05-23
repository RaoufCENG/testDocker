FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y vim \
wget
RUN mkdir /data/myvol -p && \
echo "hello world" > /data/myvol/testfile
VOLUME ["/data/myvol"]
EXPOSE 80 8080
ENTRYPOINT ["ping","127.0.0.1"]
