Ansible Workshop - Hands-On Materials
===


Course info: http://get.soft-arch.net/ansible


## Usage

Clone the project:

```
git clone https://github.com/William-Yeh/ansible-workshop.git
cd ansible-workshop
```

If you're using platforms *without* native support for Ansible (e.g., Windows), use the following procedure to gain access to the Ansible **control machine**:

On the **host machine**:

```
cd control-machine
vagrant up
vagrant ssh
```

Once you login to the **guest machine** (i.e., the Ansible **control machine** within a VM):

```
cd /vagrant
ls -al
```

You'll see the whole project files in the VM's `/vagrant` directory.

## License

Licensed under the Apache License V2.0. See the [LICENSE file](LICENSE) for details.

