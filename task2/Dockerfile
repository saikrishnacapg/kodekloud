FROM cruizba/ubuntu-dind

RUN apt install -y apparmor apparmor-utils

ADD bin.ping /etc/apparmor.d/

ADD aa-disable-write /etc/apparmor.d/

ADD start.sh /usr/local/bin

RUN chmod 777 /usr/local/bin/start.sh

ENTRYPOINT /usr/local/bin/start.sh

