Ansible Lab #21 - High Availability
===


## Load Balancing：觀念篇

Load balancing 是現代軟體架構者的必備知識。不僅是字面上「負載均衡／平衡」的作用而已，更是 high availability (HA)、zero-downtime deployment 的重要元素。

所以，在許多現代化軟體架構的場合，都可以看到 load balancer 的身影。 

這段教學影片中，我介紹 load balancing 所扮演的角色，以及常見的運用場景。

► 影片全長 7 分鐘: http://school.soft-arch.net/courses/vm-for-devops/lectures/964514


## 實習重點

### Topology

- `lb` (load balancer): 10.0.0.10
- `app1`: 10.0.0.30
- `app2`: 10.0.0.31
- `app3`: 10.0.0.32
- `db`: 10.0.0.20


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

- The WordPress application is *stateful*. You should modify the infrastructure in either way:

  1. In the HAProxy part: use the sticky session mechanism.

  2. In the application server part: use a shared PHP session mechanism.

- SSL termination.

- Infrastructure testing.
