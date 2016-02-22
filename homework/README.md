Ansible Lab #11 - 挑戰題
===

[![Circle CI](https://circleci.com/gh/theqwan-chengwei/ansible-workshop.svg?style=shield)](https://circleci.com/gh/theqwan-chengwei/ansible-workshop) [![Build Status](https://travis-ci.org/theqwan-chengwei/ansible-workshop.svg?branch=master)](https://travis-ci.org/theqwan-chengwei/ansible-workshop)


## 題目如下

(Continued from Lab #10) Don't reinvent the wheel; use existing roles from Ansible Galaxy:

- Explore and experiment with roles in Ansible Galaxy.

- List your choices in `requirements.yml`.

- Now, your `roles` directory should be empty by default.

- Now, your **main playbook** shouldn't have any `include` statement.

- Make your **main playbook** as small as possible; **ideally less than 5 tasks**.

- If there's no appropriate role in Ansible Galaxy, contribute YOURS to Ansible Galaxy!

- Of course, your results should pass all checks enforced by our CI systems.


## 解題做法

- 其實不難，因為原本的 workshop 就已經提供了一切會用到的 ansible tasks
- 所以如果要偷吃步，就是把 workshop 原本的 tasks 組合成自己的 role 一整包丟上 Ansible Galaxy。
- 個人則是一邊按著題目建議，一邊偷吃步。
- 偷吃步直接用講師做好放在 Ansible Galaxy 的 nginx role
- 再搜尋 Ansible Galaxy 找到合適的 mysql role
- 找不到合適的 php7.0-fpm 的 role，所以自己就複製 workshop 的 tasks 建了一個，丟上 Ansible Galaxy。
- 同樣找不到合適的 wordpress install role，所以複製 workshop 的 tasks 建了一個，丟上 Ansible Galaxy。
- 反覆測試，處理幾個小地雷，調整了一下 vars。
- 將 homework 接進自己的 travis CI 與 circle CI。
- 將 wordpress 安裝的最後一個動作 wordpress 5 minute install，改為 handlers，並設定一個 task + when 來觸發。
- 測試是否能通過 CI，發現一直會有無法取得 $IP 的狀況。
- 但多實驗幾次忽然又通過了 XD。
- 交卷！