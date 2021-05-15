kubernetes-slave-setup
=======================

This role is created to create Kubernetes Slave using kubeadm over aws ec2-instance.

Requirements
------------

Master should be configured already.

Role Variables
--------------

This role have no variable.

Dependencies
------------

This role delpends on :

- Role: kubernetes-master-setup

Example Playbook
----------------

### To add kubernetes-master-setup Role ( without previledges)
```sh
-  hosts: 'kk_Slave'
    roles:
          - name: "Worker Node Setup"
            role: kubernetes-slave-setup

```
### To add kubernetes-master-setup Role
```sh
-  hosts: 'kk_Slave'
    become: yes
    become_method: sudo
    become_user: root
    roles:
          - name: "Worker Node Setup"
            role: kubernetes-slave-setup

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


