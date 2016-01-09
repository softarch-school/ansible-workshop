Ansible Lab #21 - High Availability
===


## 實習重點

### Identify service dependencies

### Vagrant techniques

The `Vagrantfile` is an ordinary Ruby source file. So, any valid Ruby construct (e.g., variables, conditions, loops) can be used here.


### Separation of configuration

Separated by...

- variables and `when` conditions;
- various playbook files;
- various tags.


### Dig more into Ansible's variable system

See Ansible official documents:

- [Variables](http://docs.ansible.com/ansible/playbooks_variables.html)

- [Best Practices](http://docs.ansible.com/ansible/playbooks_best_practices.html#directory-layout)

See also Vagrant official document:

- [Ansible and Vagrant](https://docs.vagrantup.com/v2/provisioning/ansible_intro.html)


### 用到的 module(s)

- File modules / [lineinfile](http://docs.ansible.com/ansible/lineinfile_module.html): Ensure a particular line is in a file, or replace an existing line using a back-referenced regular expression.



## 想接受挑戰嗎？

- The WordPress application is stateful. You should modify the infrastructure in either way:

  1. In the HAProxy part: use the sticky session mechanism.

  2. In the application server part: use a shared PHP session mechanism.

- SSL termination.

- Infrastructure testing.
