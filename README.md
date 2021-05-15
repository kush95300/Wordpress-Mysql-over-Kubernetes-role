# Kubernetes Multi-node Cluster Setup Role

Hi Guys
</br>
I have created this repository to setup kubernetes cluster over aws in a few minutes. So, use this role. This is created for educational and learning purpose. You can find roles at ansible-galaxy also.

# Quick Reference
##### Maintained by: Kaushal Soni
##### Detailed instruction setup :   updating soon... 
 
# Supported Parameters

Following parameters are there : 

| Sr.|  PARAMETER | NAME  | USE  | CHANGE PARAMETER AT LOCATION |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| 1.| **i_name**    (String) ( Recommended change ) | Instance Name  |  It is name tag for instance. | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 2.|   **key**    (String) | Aws key name  | It is the aws key which in ec2 key section. NOTE:  write keyname only (not  Key extt. like: newkey.pem or newkey.ppk )   | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 3.|  **i_type**    (String) | Instance type | Aws Instance type like: t2.micro , t2.medium etc.    | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 4. |   **img**    (String) | Aws AMI ID  | It denotes AMI iD. AMI ID is the image through which instance will launch. e.g. - ami-xxxxxxxxx  | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 5. |   **subnet**    (String) | Aws VPC Subnet ID  | It denotes VPC subnet ID. e.g. - subnet-xxxxxxxxx)   | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 6. |  **SG**    (String) | Security Group ID  | It is the Ec2 Security Group ID. e.g. - sg-xxxxxxxxxx   | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 7. |  **counts**    (Number) | counts  | Counts denotes number of instance to launch. e.g. - 2   | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 8. |   **zone**    (String) | Availability Zone or region  | It is the AZ from where resorces are used. e.g. - 'ap-south-1'   | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 9. |  **inventory**    (String) | inventory file path  | it denotes inventory file path ( as it write group tag in inventory ). e.g. - "/etc/ansible/hosts"   | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 10. |  **grp_tag**     (String) () Recommended change )  |  Inventory Group Tag  | It denotes inventory group tag, so that after launching instance inventory entry automatically done.  | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
| 11. |   **tag**    (String) ( Recommended change )  | Instance Tag  | It is Instance tag to differenciate or compare instances.  | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
|12. |   **ssh_key_full_path**    (String) | Aws key path (Local path,)  | It denotes full key path, where key is there, so that it can write it in inventory as automatic entry..  | Update it in 'aws_instance_launcher' role defaults dir or   in setup.yml file. |
|13. |   <b>access_pass </b>     (String) ( Required )| AWS IAM user Access Key  | It denotes aws access key. | Update it in 'aws_instance_launcher' role defaults/main.yml file or 'aws_instance_launcher' role vars/main.yml file or   in setup.yml file |
|14. |   <b>secret_pass</b>     (String) ( Required ) | AWS IAM user Secret key  | It denotes aws secret key. | Update it in 'aws_instance_launcher' role defaults/main.yml file or 'aws_instance_launcher' role vars/main.yml file or   in setup.yml file. |




Use there parameters for better use.
# Ansible-galaxy
<b>Roles available at :
<b>
- Aws_instance_launcher : https://galaxy.ansible.com/kush95300/aws_instance_launcher 
- Kubernetes_master_setup : https://galaxy.ansible.com/kush95300/kubernetes_master_setup
- Kubernetes_slave_setup : https://galaxy.ansible.com/kush95300/kubernetes_slave_setup </b>

## Download Role  using command :
| **ROLES**  | **COMMAND**   |
| ------------ | ------------ |
| Aws_instance_launcher  | ansible-galaxy install kush95300.aws_instance_launcher  |
| Kubernetes_master_setup  | ansible-galaxy install kush95300.kubernetes_master_setup  |
|  Kubernetes_slave_setup | ansible-galaxy install kush95300.kubernetes_slave_setup  |


# Examples

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

# License

Free to use.

# Support & Contact
<b>

Email: kaushal95300@gmail.com

Linkedin : https://www.linkedin.com/in/kaushal-soni-988650146/

Github : https://github.com/kush95300 </b>


<br>


>> NOTE :   This Repository contains three roles.
