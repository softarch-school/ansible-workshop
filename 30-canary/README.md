Ansible Lab #30 - Canary Deployment
===


## Advanced deployment mechanisms

Quote [Martin Fowler on Delivery](http://martinfowler.com/delivery.html):

> The essence of my philosophy to software delivery is to build software so that it is always in a state where it could be put into production. We call this **Continuous Delivery** because we are continuously running a deployment pipeline that tests if this software is in a state to be delivered.

Fancy strategies:

- Rolling back deployments

- Zero-downtime releases

- [Blue-green deployment](http://martinfowler.com/bliki/BlueGreenDeployment.html)
- [Canary release](http://martinfowler.com/bliki/CanaryRelease.html)

For more info, see the outstanding book *[Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation](http://www.amazon.com/gp/product/0321601912)*.


### Canary Deployment：觀念篇

如果懶得研讀上述文章，請看看我錄的教學影片：

► 影片全長 11 分鐘: http://school.soft-arch.net/courses/vm-for-devops/lectures/964516




## 實習重點

### Topology

Same as the previous lab:

- `lb` (load balancer): 10.0.0.10
- `app1`: 10.0.0.30
- `app2`: 10.0.0.31
- `app3`: 10.0.0.32
- `db`: 10.0.0.20


### Separation of configuration

Separated by playbooks:

- the `hosts` at the beginning of playbooks
- variables and `when` conditions;
- various playbook files;
- various [tags](http://docs.ansible.com/ansible/playbooks_tags.html).

Separated by command-line arguments of `ansible-playbook`:

- `--limit` (or `-l`) host [patterns](http://docs.ansible.com/ansible/intro_patterns.html) 
- [`--extra-vars`](http://docs.ansible.com/ansible/playbooks_variables.html#passing-variables-on-the-command-line) (or `-e`)
- [`--start-at-task`](http://docs.ansible.com/ansible/playbooks_startnstep.html) task names or `--step`
- `--tags` and `--skip-tags`


### 用到的 module(s)

- Utilities modules / [pause](http://docs.ansible.com/ansible/pause_module.html): Pause playbook execution.

- Network modules / [haproxy](http://docs.ansible.com/ansible/haproxy_module.html): Enable, disable, and set weights for HAProxy backend servers using socket commands.



## 想接受挑戰嗎？

- Try to simplify the host mapping logic.

- Try to verify if "zero-downtime" is achieved.

- **Think**: is it necessary to temporarily offloading the service that is being updated?
