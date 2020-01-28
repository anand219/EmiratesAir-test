# details fir the application deployment
Jenkins IAC:

To Installation and configure Jenkins there is two steps needs to Follow.
I have implimented Terraform As IAC to create Virtual machines.
Terrafrom can create Standalone Instance to Install Jenkins.
IN terraform I have used Modules system where we can re use the code for different Environments.

Jenkins Installation:
I hhave shared the Ansible Playbook for the Jenkins installation.

You needs to create Inventory file for target hosts. and excutes the ansible playbook below.

ansible-playbook -i inventories/hosts playbooks/deployment.yml

Ansible as configuration management toll will do the jenkins installation and dependecy JAVA too.

And take the debug code and save it, we need this key to access jenkins first time.

With public ip or Dns service from Cloud with 8080 port you can access the application.


