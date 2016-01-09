# Dockerfile for building image that contains software stack provisioned by Ansible.
#
# USAGE:
#   $ docker build -t db .
#   $ docker run -d  db
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

ENV PLAYBOOK db.yml
RUN ansible-playbook-wrapper -vvv

EXPOSE 3306


#
# start the service via CMD
#

CMD service mysql start       && \
    tail -f /dev/null
