/*
This query identifies the avaialable ObjectTypes and Attributes that the loaded datasets inside wamdam 
meet the data requirement of a model (e.g., WEAP) within a specified geospatial boundary (or with no boundary too) 

Logic of the  qurey:
First, query all the ObjectTypes and Attribuites in the wamdam db. 
Second, limit the query to the sepecified coordinates.
Third, limit the query results to only to what the model (e.g., WEAP) requires for Objects and then Attribuites. 
The quer uses controlled vocabulary of both Object Types and Attribuites to map and related the existing native terms
of ObjectTypes and Attributes between the all the datasets and the model (e.g., WEAP)

Geospatial boundary here is defined by the x,y coordinates of node instances which are related to object types and attributes. 
An instance is always associated with an Object Type. The instance could have data values for zero or many attributes of the Object Type.  

An alternative way to search for data without the coordinates is to use the dataset(s) that are known to have data that 
covers the area of interest but its instances do not necessarily have coordinates values entered (coordinates are optional in WaMDaM) 



The query is generic to other areas: just change the coordinate boundary
The query is generic to other models (if they are already defined in WaMDaM): just change Acronym value
--WHERE "DatasetAcronym"='WEAP'-- 


Result:
Users can see the number of available instances and attributes for object types that WEAP requires. 
They can see the sources of each Object types and the native name in its original source along with the 
controlled or common name. 
Users can further search for more metadata and data about these instances. 
Then they can choose which ones to import to their model 
*/
Select Distinct WEAPObjectType ,ObjectTypeCV,ObjectType,DatasetAcronym, WEAPAttributeName,AttributeNameCV,AttributeName

From 


(SELECT Distinct ObjectTypeCV AS WEAPObjectTypeCV , ObjectType AS WEAPObjectType, AttributeNameCV AS WEAPAttributeNameCV , AttributeName AS WEAPAttributeName

FROM Datasets

Left JOIN "ObjectTypes" 
ON "ObjectTypes"."DatasetID"="Datasets"."DatasetID"

Left JOIN  "Attributes"
ON "Attributes"."ObjectTypeID"="ObjectTypes"."ObjectTypeID" 

WHERE "DatasetAcronym"='WEAP')

Inner Join
(
SELECT Distinct ObjectTypeCV,ObjectType,DatasetAcronym, AttributeNameCV,AttributeName

--SELECT Distinct ObjectTypeCV, AttributeNameCV
--SELECT COUNT(Distinct ObjectTypeCV) as CountOfObjects,COUNT(Distinct AttributeNameCV) As CountOfAttributes
FROM Datasets

Left JOIN "ObjectTypes" 
ON "ObjectTypes"."DatasetID"="Datasets"."DatasetID"

Left JOIN  "Attributes"
ON "Attributes"."ObjectTypeID"="ObjectTypes"."ObjectTypeID" 

Left JOIN "Mapping"
ON Mapping.AttributeID= Attributes.AttributeID

Left JOIN "Instances" 
ON "Instances"."InstanceID"="Mapping"."InstanceID"

LEFT JOIN "ScenarioMapping"
ON "ScenarioMapping"."MappingID"="Mapping"."MappingID"

Left JOIN "Scenarios" 
ON "Scenarios"."ScenarioID"="ScenarioMapping"."ScenarioID"

Left JOIN "MasterNetworks" 
ON "MasterNetworks"."MasterNetworkID"="Scenarios"."MasterNetworkID"


WHERE AttributeNameCV is not null

  
and

("Longitude_x">='-111.648' 
AND "Longitude_x"<='-110.82'
AND "Latitude_y_x">='40.712'
AND "Latitude_y"<='42.848') 


AND (ObjectTypeCV IN 

(SELECT Distinct ObjectTypeCV

FROM Datasets

Left JOIN "ObjectTypes" 
ON "ObjectTypes"."DatasetID"="Datasets"."DatasetID"

Left JOIN  "Attributes"
ON "Attributes"."ObjectTypeID"="ObjectTypes"."ObjectTypeID" 

WHERE "DatasetAcronym"='WEAP'))


AND (AttributeNameCV IN 

(SELECT Distinct AttributeNameCV

FROM Datasets

Left JOIN "ObjectTypes" 
ON "ObjectTypes"."DatasetID"="Datasets"."DatasetID"

Left JOIN  "Attributes"
ON "Attributes"."ObjectTypeID"="ObjectTypes"."ObjectTypeID" 

WHERE "DatasetAcronym"='WEAP'))

-- filter the results to focus on one Object Type and one Attribute
AND ObjectTypeCV='Reservoir'

AND AttributeNameCV='Volume'

)

On WEAPObjectTypeCV=ObjectTypeCV
AND 
WEAPAttributeNameCV =AttributeNameCV


