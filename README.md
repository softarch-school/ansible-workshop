Ansible Workshop - Hands-On Materials
===

[![Circle CI](https://circleci.com/gh/softarch-school/ansible-workshop.svg?style=shield)](https://circleci.com/gh/softarch-school/ansible-workshop) [![Build Status](https://travis-ci.org/softarch-school/ansible-workshop.svg?branch=master)](https://travis-ci.org/softarch-school/ansible-workshop)



Course info: http://get.soft-arch.net/ansible



## Contents

Case study: WordPress.


### Basic configuration level

- Basic automation via shell script.
- Step-by-step rewritten to workable Ansible playbooks ([01-basic](01-basic), [02-pkgmgr](02-pkgmgr), [03-deploy](03-deploy), [04-db](04-db), [05-success](05-success)).
- Continuous integration of infrastructure via Travis CI and CircleCI ([06-ci](06-ci)).

### Intermediate level

- Refactoring ([10-role](10-role)).
- Ansible Galaxy ([11-galaxy](11-galaxy)).

### Advanced architecture level

- Cluster architecture ([20-cluster](20-cluster)).
- HA (high availability) architecture ([21-ha](21-ha)).
- Continuous deployment demo with canary deployment ([30-canary](30-canary)).


## Usage

### In the class

1. Fork this project.

2. Clone your fork:

   ```
   git clone https://github.com/YOUR-ACCOUNT/ansible-workshop.git
   cd ansible-workshop
   ```

3. Follow the SOP to be taught in the class
   (a.k.a., 【圍繞在組態管理技術上的自動化手法 <sup>TM</sup>】）
   to go through each lab.


### After the class

1. Re-visit each lab. Make sure you can *demo* all scenarios on your own.

2. Re-visit each lab. But this time:

   a. Try to *write your own version* of Ansible playbooks!!!
   b. Read the `README` hints of each lab, if necessary;
   c. Try to tackle the 【想接受挑戰嗎？】 parts on your own.

3. Remember:

   > “天經地義的事持續做，水準會提升。”

   >  &nbsp;&nbsp;&nbsp; by 櫻木 建二


## Note for Windows users

If you're using platforms *without* native support for Ansible (e.g., on Windows), use the following procedure to gain access to the Ansible **control machine**.

First, on the **host machine**, do the following to login to the Ansible control machine:

```
cd control-machine
vagrant up
vagrant ssh
```

Once you login to the **guest machine** (i.e., the Ansible **control machine** within a VM), you'll see the whole project files in the VM's `/vagrant` directory:

```
cd /vagrant
ls -al
```

For step-by-step instruction, watch my 14-minute video: 【[在 Windows 上也能使用 Ansible](http://school.soft-arch.net/courses/ansible/lectures/659421)】.


## License

Licensed under the Apache License V2.0. See the [LICENSE file](LICENSE) for details.

