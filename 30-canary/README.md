Ansible Lab #30 - Canary Deployment
===


## 實習重點

### Advanced deployment mechanisms

Quote [Martin Fowler on Delivery](http://martinfowler.com/delivery.html):

> The essence of my philosophy to software delivery is to build software so that it is always in a state where it could be put into production. We call this **Continuous Delivery** because we are continuously running a deployment pipeline that tests if this software is in a state to be delivered.

Fancy strategies:

- Rolling back deployments

- Zero-downtime releases

- [Blue-green deployment](http://martinfowler.com/bliki/BlueGreenDeployment.html)
- [Canary release](http://martinfowler.com/bliki/CanaryRelease.html)

For more info, see the outstanding book *[Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation](http://www.amazon.com/gp/product/0321601912)*.



### Separation of configuration

Separated by...

- variables and `when` conditions;
- various playbook files;
- various tags.



### 用到的 module(s)

- Network modules / [haproxy](http://docs.ansible.com/ansible/haproxy_module.html): Enable, disable, and set weights for HAProxy backend servers using socket commands.



## 想接受挑戰嗎？

- Try to simplify the host mapping logic.

- Try to verify if "zero-downtime" is achieved.

- Think: if it is necessary to temporarily offloading the service that is being updated?
