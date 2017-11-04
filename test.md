# WaMDaM_ControlledVocabularies
A Python/Django web application and REST API for managing the WaMDaM Controlled Vocabularies.This repository contains the source code for the master controlled vocabulary registry for the Water Management Data Model (WaMDaM).

The production Controlled Vocabulary website for WaMDaM (which uses this code) can be accessed at: http://vocabulary.wamdam.org/
This online moderated registry aims to promote consistent terminology (i.e., Controlled Vocabularies-(CVs)) to describe water system components and their attributes across datasets, models, and users, while still retaining the native terms. Registering your model's native terms against these CVs will allow you to relate, query, and compare all of your water management data within a single database. 


## Required software and hardware
*	A Web server to host this controlled vocabulary server. Here we use an Amazon Elastic Compute Cloud instance (Amazon EC2) at the Amazon Web Services (AWS).    
*	Excel 2007 and on (.xlsx) to organize the CV terms and load them dynamically to the web-server in one command line 
*	MySQL to host the CV database in the server  
*	Python/Jango  
*	Docker to install software containers   
*	Ansible to deploty the repository from a local machine into the server
* Simple Mail Transfer Protocol (SMTP) server to send emails from the CV server to the moderator and the people who submit new terms. Here we use a gmail smpt server   
*	reCAPTCHA service that protects the CV website from spam and abuse as far as submitting new CV terms  


## Steps to deploy the WaMDaM CV system 

1. Create an Amazon Web Services account and an Amazon EC2 Instance  



2. Set up the enviroment on your local machine (install Python and Ansible)  



3. Set up the server machine and deploy the application  



4. Populate database from excel  



5. Forward the EC2 URL to a domain of your choice (GoDaddy)  



5. How to uninstall the application   




### Credits
We adapted the design of this registry from the source code of the ODM2 ControlledVocabularies available on GitHub @ https://github.com/ODM2/ODM2ControlledVocabularies. Thanks to Dr. Jeff Horsburgh and the ODM2 team for promoting #OpenScience by publishing their source code.   

This server of the WaMDaM registry is deployed on Amazon Web Services (AWS) thanks to AWS Educate for their support. The adapted source code is available on GitHub @ https://github.com/amabdallah/WaMDaMControlledVocabularies.   


This work was supported by National Science Foundation (NSF) under Grants 1135482 (CI-Water) and 1208732 (iUtah). Any opinions, findings, and conclusions or recommendations expressed in this material are those of the author(s) and do not necessarily reflect the views of the NSF.   
