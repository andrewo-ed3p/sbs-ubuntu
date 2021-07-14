FROM abhiramk/basesshimage:1.2.2-develop-67d9277

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y \
       htop \
       wget \ 
       docker.io \
       git \
       mc

ADD start.sh ./
ADD custom-script /etc/init.d/

#RUN chkconfig --add custom-script
RUN update-rc.d custom-script defaults
