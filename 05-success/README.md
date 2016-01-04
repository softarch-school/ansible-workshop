Ansible Lab #05 - Handlers
===

## 實習重點

### Pursue for idempotence with handlers

- Handler for "reload nginx"
- Handler for "reload php-fpm"
- Verb: `notify`


### Stages

Common stages:

- dev, test, staging, production
- initialize, update, rollback


### Be open for surprise...

Different IaaS/VM providers may have different pre-installed packages. For example, even with the same "Ubuntu 14.04 LTS" VM image:

- In Vagrant box [`ubuntu/trusty64`](https://atlas.hashicorp.com/ubuntu/boxes/trusty64), the Python library `httplib2` is pre-installed.
- In Google Compute Engine `Ubuntu 14.04 LTS` (amd64 trusty image built on 2015-11-13), the Python library `httplib2` is *not* pre-installed.


### 用到的 module(s)

- Files modules / [template](http://docs.ansible.com/ansible/template_module.html): Templates a file out to a remote server.

- System modules / [service](http://docs.ansible.com/ansible/service_module.html): Manage services.

- Packaging modules / [apt](http://docs.ansible.com/ansible/apt_module.html): Manages apt-packages.

- Network modules / [uri](http://docs.ansible.com/uri_module.html): Interacts with webservices.


## 想接受挑戰嗎？

Try to automate the following software stack?

- https://github.com/rocodev/guides/wiki/setup-production-development


- https://ihower.tw/rails4/deployment.html

- https://realpython.com/blog/python/kickstarting-flask-on-ubuntu-setup-and-deployment/

