FROM centos:7
LABEL maintainer="Patrick Ungewiß <patrick.ungewiss@anderscore.com>"
ARG TIMEZONE="Germany/Cologne"

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

#update yum
RUN yum update -y && \
yum clean all

#installing sshd, httpd, sudo, openssl
RUN yum install -y \
openssh-server \
openssh-clients \
httpd \
httpd-tools \
sudo \
openssl && \
yum clean all

#installing more tools
RUN yum install -y \
git \
sed \
telnet \
vim \
unzip \
crontabs \
zip && \
yum clean all

# define the port number the container should expose
EXPOSE 5000