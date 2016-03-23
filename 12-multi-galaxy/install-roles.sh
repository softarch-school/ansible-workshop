#!/bin/bash
#
# @see http://docs.ansible.com/galaxy.html#advanced-control-over-role-requirements-files
#

ansible-galaxy install -f  -p roles  -r requirements.yml
