/*

This query identifies the additional ObjectTypes and Attributes that needed for a model (e.g., WEAP) which WaMDaM does not have data for them
within a specified geospatial boundary (or with no boundary too). 

Logic of the  qurey:
First, query all the ObjectTypes and Attribuites that WEAP requires (the model (e.g., WEAP) data requirements have to be defined in WaMDaM). 
Second, limit the query (exclude) the existing object types and attributes for WEAP that returned as in the query: (AvailableDataForModel.sql)
within the the sepecified coordinates. 
The quer uses controlled vocabulary of both Object Types and Attribuites to map and related the existing native terms
of ObjectTypes and Attributes between the all the datasets and the model (e.g., WEAP)

*/

SELECT DISTINCT ObjectType As WEAPObjectType,ObjectTypeCV,AttributeName As WEAPAttributeName,AttributeNameCV

FROM Datasets

Left JOIN "ObjectTypes" 
ON "ObjectTypes"."DatasetID"="Datasets"."DatasetID"

Left JOIN  "Attributes"
ON "Attributes"."ObjectTypeID"="ObjectTypes"."ObjectTypeID" 

WHERE "DatasetAcronym"='WEAP'

--------------------------------------------------------------------------------------------------

AND 

("AttributeNameCV" NOT IN (

SELECT Distinct AttributeNameCV

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
AND "Latitude_y"<='42.848') ))





