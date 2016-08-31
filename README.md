## Ambari-Deployment
This repository aims at automating the cluster deployment by using configuration management tool ansible. We have writted this for RedHat distribution machine _centos 6.5_.


## Usage

#### 1. Set PasswordLess SSH

#### 2. Download the git and the repo
  ```
  yum -y install git
  git clone https://github.com/CloudwickShared/ansible
  cd ansible
  ```
#### 3. Set Ansible
`sh setEPEL.sh`

#### 4. Edit hosts file and also /etc/hosts

#### 5. If Java not present, install java
`ansible-playbook -i hosts installJava.yml`

#### 6. Run the HDP Setup
`ansible-playbook -i hosts site.yml`



## Optional

#### 1. To delete the services 
`ansible-playbook -i hosts cleanUp.yml`


To check existing connection in psql
`Select * from pg_stat_activity;`



