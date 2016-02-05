Ansible Lab #01 - Basic
===

## Ansible 初體驗

[Ansible 起手式] 用 Ansible 設定虛擬機組態／

任何主機（不管是實體機、本地虛擬機、雲端主機），只要有提供 SSH 登入的途徑，也有預載 Python 2.x 版，就能被視為 managed node，就能被 Ansible 系統管理。

這一課，我們先以本機端的虛擬機為例，示範如何用 Ansible 來設定它的組態。先了解 Ansible 的 control machine 及 managed node 的運作邏輯，之後再將經驗套用到雲端主機身上。

這段教學影片中，我以 Ansible 軟體來示範兩種組態管理的手法：
① 「Ansible → Vagrant」操作動線，
② 以 Vagrant 為中心的操作動線。

► 影片全長 15 分鐘: http://school.soft-arch.net/courses/ansible/lectures/737129


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
