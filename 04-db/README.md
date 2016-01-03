Ansible Lab #04 - Database
===

## 實習重點

### Some Ansible modules have prerequisites

For example,

- [debconf](http://docs.ansible.com/ansible/debconf_module.html) requires the command line debconf tools.

- [mysql_db](http://docs.ansible.com/ansible/mysql_db_module.html) requires `python-mysqldb` (for apt) or `MySQL-python` (for yum).



### 用到的 module(s)

- System modules / [debconf](http://docs.ansible.com/ansible/debconf_module.html): Configure a .deb package.

- Database modules / [mysql_db](http://docs.ansible.com/ansible/mysql_db_module.html): Add or remove MySQL databases from a remote host.

- Database modules / [mysql_user](http://docs.ansible.com/ansible/mysql_user_module.html): Adds or removes a user from a MySQL database.


## 思考...

Raw SQL statements vs Ansible `mysql_*` modules.


## 想接受挑戰嗎？

How to make the `debconf` step idempotent?

The first time of successful execution, the output is:

```
TASK: [auto set root password for mysql] **************************************
changed: [default] => (item=mysql-server/root_password)
changed: [default] => (item=mysql-server/root_password_again)
```

But after that, the output should not be in the **"changed"** state again. It should be either in the **"ok"** state:

```
TASK: [auto set root password for mysql] **************************************
ok: [default]
ok: [default]
```

or even better, in the **"skippping"** state:

```
TASK: [auto set root password for mysql] **************************************
skipping: [default]
skipping: [default]
```
