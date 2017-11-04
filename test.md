# WaMDaM Controlled Vocabularies
A Python/Django web application and REST API for managing the WaMDaM Controlled Vocabularies.This repository contains the source code for the master controlled vocabulary registry for the Water Management Data Model (WaMDaM).

The production Controlled Vocabulary website for WaMDaM (which uses this code) can be accessed at: http://vocabulary.wamdam.org/
This online moderated registry aims to promote consistent terminology (i.e., Controlled Vocabularies-(CVs)) to describe water system components and their attributes across datasets, models, and users, while still retaining the native terms. Registering your model's native terms against these CVs will allow you to relate, query, and compare all of your water management data within a single database. 


## Required software and hardware
* Linux local machine 	
* A Web server to host this controlled vocabulary server. Here we use an Amazon Elastic Compute Cloud instance (Amazon EC2) at the Amazon Web Services (AWS). Ubuntu Server 16.04
*	Excel 2007 and on (.xlsx) to organize the CV terms and load them dynamically to the web-server in one command line 
*	MySQL to host the CV database in the server  
*	Python/Jango  
*	Docker to install software containers   
*	Ansible to deploty the repository from a local machine into the server
* Simple Mail Transfer Protocol (SMTP) server to send emails from the CV server to the moderator and the people who submit new terms. Here we use a gmail smpt server   
*	reCAPTCHA service that protects the CV website from spam and abuse as far as submitting new CV terms  


## Steps to deploy the WaMDaM CV system 

1. Create an Amazon Web Services account and an Amazon EC2 Instance  
First thing you will need is an account on Amazon Web Services (AWS) if you dont have any. Head to this link and follow the instructions to sign up: http://docs.aws.amazon.com/AmazonSimpleDB/latest/DeveloperGuide/AboutAWSAccounts.html

A Step by step details with screenshots to create an EC2 instance and get to know how to access it are provided here @
The third below assumes you already have an EC2 instance and you're connected to it. 

2. Set up the enviroment on your local machine (install Python and Ansible)  
This section provides step by step instructions on how to deploy the WaMDaM Django based application into an Amazon EC2 instance, using Ansible and Docker  
To use this instructions you just need some basic knowledged on Linux Commands. Python, Django MySQL and Docker skills are desirable but not mandatory to deploy this application
You are going to deploy this application on remote hosts from a local machine that you have access to. To do so, you need to install some software on this local machine. These instructions are valid for any Debian based distributions (Ubuntu, Linux Mint, etc). Specific instructions for Windows systems are not provided here but these links might be useful:
* http://python-guide-pt-br.readthedocs.io/en/latest/starting/install/win/
* https://www.howtogeek.com/197947/how-to-install-python-on-windows/
* http://docs.ansible.com/ansible/intro_windows.html

Now, on your local machine with a Debian derivative system, the only requirement is Ansible itself, but first you need to install (as root) __pip__ if you don't have it already, using this command:

`apt install python-pip`

Now, install ansible using this command (again as root):

`pip install ansible`


3. Set up the server machine and deploy the application  

Before you deploy any application on this instance you need to install python on the EC2 instance. So, login to the instance using the __key pair__ previously provided. Once you login on the instance, run this command:

```
sudo apt install python
```

With this you will be ready to deploy applications into this instance using Ansible

To deploy the apps using Ansible you need the __key pair__ that you use to connect to the EC2 instance, for this example is named `WATER.pem`

Hopefully you have already cloned this repository in your local machine, if not, run this command: 

`git clone https://github.com/amabdallah/WaMDaMCVs`

4. Populate database from excel  



5. Forward the EC2 URL to a domain of your choice (GoDaddy)  



5. How to uninstall the application   




### Credits
We adapted the design of this registry from the source code of the ODM2 ControlledVocabularies available on GitHub @ https://github.com/ODM2/ODM2ControlledVocabularies. Thanks to Dr. Jeff Horsburgh and the ODM2 team for promoting #OpenScience by publishing their source code.   

This server of the WaMDaM registry is deployed on Amazon Web Services (AWS) thanks to AWS Educate for their support. The adapted source code is available on GitHub @ https://github.com/amabdallah/WaMDaMControlledVocabularies.   


This work was supported by National Science Foundation (NSF) under Grants 1135482 (CI-Water) and 1208732 (iUtah). Any opinions, findings, and conclusions or recommendations expressed in this material are those of the author(s) and do not necessarily reflect the views of the NSF.   
