kubernetes-master-setup
=======================

This role is created to create Kubernetes Master using kubeadm over aws ec2-instance.

Requirements
------------

There are no requirement. ( Only ansible should be correctly installed and ec2 instance successfully created and inventory entry should be right.)

Role Variables
--------------

This role have no variable.

Dependencies
------------

There are no dependencies.

Example Playbook
----------------

### To add kubernetes-master-setup Role
```sh
-  hosts: 'kk_master'
    become: yes
    become_method: sudo
    become_user: root
    roles:
          - name: "Master Node Setup"
            role: kubernetes-master-setup

```

### To add kubernetes-master-setup Role ( without previledges)

```sh
-  hosts: 'kk_Master'
    roles:
          - name: "Main Node Setup"
            role: kubernetes-master-setup

```
License
-------

BSD
Free to use.

Author Information
------------------

##### Maintained by: Kaushal Soni
 
### Support & Contact
<b>
Email: Kaushal95300@gmail.com </br>
Linkedin : https://www.linkedin.com/in/kaushal-soni-988650146/ </br>
Github : https://github.com/kush95300 </b> </br>


