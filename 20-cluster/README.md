Ansible Lab #20 - Cluster
===

[![Circle CI](https://circleci.com/gh/softarch-school/ansible-workshop.svg?style=shield)](https://circleci.com/gh/softarch-school/ansible-workshop) [![Build Status](https://travis-ci.org/softarch-school/ansible-workshop.svg?branch=master)](https://travis-ci.org/softarch-school/ansible-workshop)


## 實習重點

### Topology

- `main`: 10.0.0.10
- `db`: 10.0.0.20


### Identify service dependencies


### Identify hard-coded or hidden assumptions

- IP address
- Port number
- Path
- Network interface (e.g., `127.0.0.1` vs. `0.0.0.0`)



### Separation of configuration

Separated by...

- variables and `when` conditions;
- various playbook files;
- various tags.



### 用到的 module(s)

- File modules / [lineinfile](http://docs.ansible.com/ansible/lineinfile_module.html): Ensure a particular line is in a file, or replace an existing line using a back-referenced regular expression.

- Database modules / [mysql_user](http://docs.ansible.com/ansible/mysql_user_module.html): Adds or removes a user from a MySQL database.



## 想接受挑戰嗎？

- Avoid the "all hosts" `%` setting in the MySQL `GRANT PRIVILEGES` statement.

- Use the [container links](https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/) feature of Docker to simplify the testing Dockerfiles.

- Use [Docker Compose](https://github.com/docker/compose) to simplify the testing job.
