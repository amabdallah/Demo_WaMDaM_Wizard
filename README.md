# Demo the WaMDaM Wizard

In this workshop, we will work with the WaMDaM Wizard to load example water managmenet data into a SQLite database, then query, and compare data across datasets in the Bear River Watershed, Utah. We will use the online controlled vocabulary system to relate different terms across the datasets.  

Please follow the pre-workshop instructions below and let me know if you have issues to solve them before the workshop. Probably its best if you clone the repo to your machine (but the Wizard executable needs to be downloaded from its url)

## What is WaMDaM?

The Water Management Data Model (WaMDaM) is a new method to organize, identify, and compare water management data for systems models. 

Think of WaM-DaM as a repository of water management data (purple cylinder) and a translator between numerous data sources on the left and different models on the right (see flowchart). WaM-DaM translates two aspects of the data: the syntax (i.e., structure) and semantics (terminology). WaM-DaM will speed the time to find, organize, and synthesize data from different data sources, and prepare data for modeling. If you're curious, see WaMDaM schema here: http://amabdallah.github.io/test2/diagrams/01_WaMDaM_NoCVs.html

<img src="https://github.com/amabdallah/Tests/blob/master/WaMDaM_workflow.jpg"/>  


## Why WaMDaM?   
WaMDaM enables researchers and water managers to organize water management data with two keys aspects that are not supported by existing methods:    
**i)** represents the connectivity between system components (e.g., demand site and reservoir). It also tracks the configurations of networks and changes in their topology and data through scenarios, with no duplication.   
**ii)** represents one or all of these data types: 1) dual values (e.g., binary), 2) numeric values, 3) descriptor values, 4) seasonal numeric values, 5) electornic files, 6) time series, 7) multi-attribute series (i.e., multi-columns).  


## Why WaMDaM Wizard?   
The WaMDaM Wizard is an open-source, cross-platform, Python-based graphical user software to interact with WaMDaM database. By using the Wizard, users are not expected to understand the underlying WaMDaM database of schema. Users just need to understand how to fit their data into these concepts: ObjectType, Attribute, Instance, Network, and Scenario. 
The Wizard mainly allows users to automatically:    
**i)**   Load and validate data from a specific spreadsheet template   
**ii)**  Use data preparation tools to help manipulate and transform users data to fit into the spreadsheet template.  
**iii)** Import data directly from supported web-services (e.g., time series data from CUAHSI)  
**iv)**  Use pre-defined functions to query and compare data from multiple datasets loaded in WaMDaM   
**v)**   Export data loaded into WaMDaM to multiple supported models   



# Finish before the workshop

1. Download the WaMDaM Wizard executable. It works on Windows [7 and 10] 64 bit operating systems 
https://bft.usu.edu/96zs3
Double click at the executable. You should see this window below. Hopefully it is self-explanatory to navigate through. 

<img src="https://github.com/amabdallah/Tests/blob/master/Wizard.PNG" alt="Drawing" style="width: 60px;"/>  


2. Download the excel files at the link below. The Excel files have different water management data for the Bear River Watershed, Utah. We might work with one or nany of them.
https://github.com/amabdallah/Demo_WaMDaM_Wizard/tree/master/datasets

<img src="https://github.com/amabdallah/Demo_WaMDaM_Wizard/blob/master/Application.PNG" alt="Drawing" style="width: 60px;"/>  

3. Check out this online system for controlled vocabulary that WaMDaM Wizard uses. http://vocabulary.wamdam.org/

4. Follow the instructions here to install a SQLite Manager Add-on to Mozilla Firefox web browser. We may use this tool to open and query the sqlite files like this one [AllDatasets_July25.sqlite](https://github.com/amabdallah/Demo_WaMDaM_Wizard/blob/master/AllDatasets_July25.sqlite)

https://github.com/amabdallah/WaM-DaM/blob/master/02UseCases/UseCasesDocs/UseCasePage/SQLite_Instructions.md   

5. Bring samples of your own data if you're interested in organizing them in a WaMDaM database. Download this excel template to work with. Example data could be one or many of these: time series and parameters that apply to nodes and links in your study area.
https://github.com/amabdallah/Demo_WaMDaM_Wizard/blob/master/datasets/template/WaMDaM_Template_July24.xlsm



# Demo instructions (the workshop)  
1. Give a quick demo on how to use the Wizard
2. Show data comparison results that are enabled by WaMDaM 
3. Give a quick demo on how to suggest new controlled vocabulary terms
4. Allow everyone to work to fit their data into the WaMDaM spreadsheet and load it into the database 
5. Answer questions and get feedback


