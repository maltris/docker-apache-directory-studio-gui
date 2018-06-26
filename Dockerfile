FROM debian:stretch

RUN apt-get update \
	&& apt-get install -y \
		openjdk-8-jdk-headless \
		curl \
		gzip \
		libgtk2.0-0 \
		libxext-dev \
		libxrender-dev \
		libxtst-dev \
	&& apt-get clean

RUN curl -SL https://ftp.fau.de/apache/directory/studio/2.0.0.v20170904-M13/ApacheDirectoryStudio-2.0.0.v20170904-M13-linux.gtk.x86_64.tar.gz \
	| tar -zxC ./

COPY ./docker-entrypoint.sh /
#CMD /docker-entrypoint.sh start
CMD ./ApacheDirectoryStudio/ApacheDirectoryStudio
