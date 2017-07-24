# Demo the WaMDaM Wizard

In this workshop, we will work with the WaMDaM Wizard to load data into a SQLite database, then query, and compare data across datasets in the Bear River Watershed, Utah. We will use the online controlled vocabulary system to relate different terms across the datasets.  

Please follow the pre-workshop instructions below and let me know if you have issues to solve them before the workshop.  

## What is WaMDaM?

The Water Management Data Model (WaMDaM) is a new method to organize, identify, and compare water management data for systems models. 

Think of WaM-DaM as a repository of water management data (purple cylinder) and a translator between numerous data sources on the left and different models on the right (see flowchart). WaM-DaM translates two aspects of the data: the syntax (i.e., structure) and semantics (terminology). WaM-DaM will speed the time to find, organize, and synthesize data from different data sources, and prepare data for modeling. If you're curious, see WaMDaM schema here: http://amabdallah.github.io/test2/diagrams/01_WaMDaM_NoCVs.html

<img src="https://github.com/amabdallah/Tests/blob/master/WaMDaM_workflow.jpg"/>  


## Why WaMDaM?   
WaMDaM enables researchers and water managers to organize water management data with two keys aspects that are not supported by existing methods:    
**i)** represents the connectivity between system components (e.g., demand site, reservoir). It also tracks the configurations of networks and changes in their topology and data through scenarios.   
**ii)** represents one or all these data types: 1) dual values (e.g., binary), 2) numeric values, 3) descriptor values, 4) seasonal numeric values, 5) files, 6) time series, 7) multi-attribute series (i.e., multi-columns).  


## Why WaMDaM Wizard?   
The WaMDaM Wizard is an open-source, cross-platform, Python-based graphical user software to interact with WaMDaM database. Users are not expected to understand the underlying WaMDaM database of schema. The Wizard mainly allows users to:    
**i)**   Load and validate data from a specific spreadsheet template   
**ii)**  Use data preparation tools to help manipulate and transform users data to fit into the spreadsheet template.  
**iii)** Import data directly from supported web-services (e.g., time series data from CUAHSI)  
**iv)**  Use pre-defined functions to query and compare data from multiple datasets loaded in WaMDaM   
**v)**   Export data loaded into WaMDaM to multiple supported models   



# Demo instructions (pre-workshop)

1. Download the WaMDaM Wizard executable. It works on Windows [7 and 10] 64 bit operating systems 
https://bft.usu.edu/96zs3
Double click at the executable. You should see this window. Hopefully it is self-explanatory to work with. 

<img src="https://github.com/amabdallah/Tests/blob/master/Wizard.PNG" alt="Drawing" style="width: 60px;"/>  


2. Download the excel files at the link below. The Excel files have different water management data for the Bear River Watershed, Utah.

<img src="https://github.com/amabdallah/Demo_WaMDaM_Wizard/blob/master/Application.PNG" alt="Drawing" style="width: 60px;"/>  

3. Check out this online system for controlled vocabulary that WaMDaM Wizard uses. http://vocabulary.wamdam.org/

4. Bring samples of your own data if you're interested in organizing them into a WaMDaM database. 


# Demo instructions (in the workshop)  
1. Give a quick demo on how to use the Wizard
2. Show data comparison results that are enabled by WaMDaM 
3. Give a quick demo on how to suggest new controlled vocabulary terms
4. Everyone work to fit their data into the WaMDaM Wizard and load it into the database 
5. Answer questions and get feedback


