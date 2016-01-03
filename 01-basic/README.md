Ansible Lab #01 - Basic
===

## 實習重點

### Ansible terminology

- control machine
- managed node
- inventory
- playbook
- module (See also: [總列表](http://docs.ansible.com/ansible/modules_by_category.html))


### Playbook 基本結構

- hosts
- vars
- tasks


### 用到的 module(s)

- File modules / [lineinfile](http://docs.ansible.com/ansible/lineinfile_module.html): Ensure a particular line is in a file, or replace an existing line using a back-referenced regular expression.


### Ansible 變數樣板系統

- Jinja2 (See also: [Using Variables: About Jinja2](http://docs.ansible.com/ansible/playbooks_variables.html#using-variables-about-jinja2))


### 執行

- `ansible-playbook`
- idempotent
