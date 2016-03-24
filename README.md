Ansible Workshop - Hands-On Materials
===

[![Circle CI](https://circleci.com/gh/chusiang/ansible-workshop.svg?style=shield)](https://circleci.com/gh/chusiang/ansible-workshop) [![Build Status](https://travis-ci.org/chusiang/ansible-workshop.svg?branch=develop)](https://travis-ci.org/chusiang/ansible-workshop)



Course info: http://get.soft-arch.net/ansible



## Contents

Case study: WordPress.


### Basic configuration level

- Basic automation via shell script.
- Step-by-step rewritten to workable Ansible playbooks.
- Refactoring.
- Ansible Galaxy.
- Continuous integration of infrastructure via Travis CI and CircleCI.

### Advanced architecture level

- Cluster architecture.
- HA (high availability) architecture.
- Continuous deployment demo with canary deployment.


## Usage

1. Fork this project.

2. Clone your fork:

   ```
   git clone https://github.com/YOUR-ACCOUNT/ansible-workshop.git
   cd ansible-workshop
   ```

3. Follow the SOP to be taught in the class
   (a.k.a., 【圍繞在組態管理技術上的自動化手法 <sup>TM</sup>】）
   to go through each lab.


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

