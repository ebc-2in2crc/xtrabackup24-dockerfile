FROM debian:stretch-slim

RUN apt update && \
		apt install wget -y && \
		apt install lsb-release -y && \
		apt install gnupg2 -y && \
		wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb && \
		dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb && \
		apt update && \
		apt install percona-xtrabackup-24 -y

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]
