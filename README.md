## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

cybersecurityprojects/diagrams/diagram_network-Unit_13.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

cybersecurityprojects/ansible/filebeat-playbook.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting unwanted access to the network.

A Load balancer is an intelligent network security device that distributes the incoming traffic across multiple servers which may help protect against a DDoS attack. 

The advantage of a jump box is it prevents all VM's from being exposed to the public, this enables a single point to manage user accounts and audit the traffic.  

<<<<<<< HEAD
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
=======
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
>>>>>>> 3a7cc0f (First commit)
- Filebeat monitors the log data or specific configured locations.  
- Metricbeat records metrics from the system and services running on the server. 

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function 			| IP Address | Operating System            |
|----------|------------------------------|------------|-----------------------------|
| Jump Box | Gateway  			| 10.0.0.4   | Linux  - Ubuntu 18.04.6 LTS |
| web-1    | Load balancing webservers  	| 10.0.0.5   | Linux  - Ubuntu 18.04.6 LTS |
| web-2    | Load balancing webservers   	| 10.0.0.6   | Linux  - Ubuntu 18.04.6 LTS |
| ElkVM    | Monitors and logging        	| 10.1.0.4   | Linux  - Ubuntu 18.04.6 LTS |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 99:244:137:197

Machines within the network can only be accessed by the Jump Box Ansible.
Which machine did you allow to access your ELK VM? What was its IP address? Jump Box IP 40.71.91.118 once inside, then to the ELK VM IP: 10.1.0.4  

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 99:244:137:197       |
| web-1    | No                  | 10.0.0.4             |
| web-2    | No                  | 10.0.0.4             |
| ElK VM   | No                  | 10.0.0.4	     |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
What is the main advantage of automating configuration with Ansible? Saves time with its provisioning, configuration management, deploying applications, orchestration, compliance and security ability benefits.  

The playbook implements the following tasks:

1. Install docker.io  
2. Install python3-pip  
3. Install Docker module 
4. Increase virtual memory (vm.max_map_count  value: "262144")
5. Increase virtual memory on restart  
6. Download and launch a docker elk container (image: sebp/elk:761)
7. Enable service docker on boot


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

<<<<<<< HEAD
cybersecurityprojects/ansible/Images/docker_ps_output.png)
=======
cybersecurityprojects/Images/docker_ps_output.png)
>>>>>>> 3a7cc0f (First commit)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:

Incoming IP Traffic on Port 5601 going through the Jump Box.  

We have installed the following Beats on these machines:
- Filebeat and Metricbeat successfully installed:

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

Filebeats is a lightweight shipper to centralize and forward logs and files. While Metricbeats is a lightweight shipper of Metrics, which collects metrics from services and systems.   


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the YAML file to the docker.
- Update the cache file to include the IP. 
- Run the playbook, and navigate to 'ansible-playbook (Playbook_name).yml --check' to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it? Playbook is where the Ansible code is written .yml (YAML stands for Yet Another Markup Language) Copy the playbook.yml file to the docker. 
- _Which file do you update to make Ansible run the playbook on a specific machine? Hostname
How do I specify which machine to install the ELK server on versus which to install Filebeat on? It is installed on the docker.
- _Which URL do you navigate to in order to check that the ELK server is running? 52.229.111.123:5601

<<<<<<< HEAD
_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._Anwser: ansible-playbook
=======
_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._Anwser: ansible-playbook
>>>>>>> 3a7cc0f (First commit)
