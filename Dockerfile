FROM abhiramk/basesshimage:1.2.2-develop-67d9277

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y \
       htop \
       wget \ 
       docker.io \
       git \
       mc

ADD start.sh /srv/
#ADD custom-script /etc/init.d/
##RUN chkconfig --add custom-script
#RUN update-rc.d custom-script defaults

COPY customd /etc/systemd/system/customd.service
RUN chmod 644 /etc/systemd/system/customd.service
RUN systemctl enable customd.service

