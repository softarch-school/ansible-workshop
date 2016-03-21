# Dockerfile for building image that contains software stack provisioned by Ansible.
#
# USAGE:
#   $ docker build -t wordpress .
#   $ docker run -d  wordpress
#
# Version  1.1
#


# pull base image
FROM williamyeh/ansible:ubuntu14.04-onbuild

MAINTAINER William Yeh <william.pjyeh@gmail.com>


#
# build phase
#


# fix policy-rc.d for Docker
# @see http://www.monblocnotes.com/node/2057
# @see http://askubuntu.com/a/365912
RUN sed -i -e 's/exit\s\s*101/exit 0/' /usr/sbin/policy-rc.d


# ==> Specify requirements filename;  default = "requirements.yml"
#ENV REQUIREMENTS  requirements.yml

ENV PLAYBOOK wordpress.yml
RUN ansible-playbook-wrapper  \
      --extra-vars "modify_hostname=false mysql_address=MYSQL_ADDRESS"

EXPOSE 80


#
# start the service via CMD
#

CMD \
    service php7.0-fpm start                      && \
    service nginx start                           && \
    IP=`head -n 1 /etc/hosts | sed 's/\t.*//'`    && \
    PLAYBOOK=init-wordpress.yml      \
       ansible-playbook-wrapper -vvv \
         --extra-vars `echo hostname=$IP`         && \
    tail -f /dev/null