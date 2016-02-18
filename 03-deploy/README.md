Ansible Lab #03 - App Deployment
===

## 實習重點

### Application deployment

- Source: download tar.gz or git?
- Binary: download or via package manager?
- Permission
- Customized configuration?


### Pursue for idempotence

- Register variables
- Conditions (`when` in this example)
- Handlers (to be discussed later in Lab #05)


### Customized configuration

Copy configuration files...

- as-is
- variable substitution with Jinja2 template system


### Directory layout

See: Ansible official document - [Best Practices](http://docs.ansible.com/ansible/playbooks_best_practices.html#directory-layout)


### 用到的 module(s)

- Network modules / [get_url](http://docs.ansible.com/ansible/get_url_module.html): Downloads files from HTTP, HTTPS, or FTP to node.

- Files modules / [unarchive](http://docs.ansible.com/ansible/unarchive_module.html): Unpacks an archive after (optionally) copying it from the local machine.

- Commands modules / [command](http://docs.ansible.com/ansible/command_module.html): Executes a command on a remote node.

- Files modules / [template](http://docs.ansible.com/ansible/template_module.html): Templates a file out to a remote server.

- File modules / [lineinfile](http://docs.ansible.com/ansible/lineinfile_module.html): Ensure a particular line is in a file, or replace an existing line using a back-referenced regular expression.

- System modules / [service](http://docs.ansible.com/ansible/service_module.html): Manage services.



## 想接受挑戰嗎？

**Pursue for idempotence** with handlers:

- Handler for "reload nginx"
- Handler for "reload php-fpm"

Full details are to be discussed later in Lab #05.
