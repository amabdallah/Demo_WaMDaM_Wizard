/*
Find node and link Instances within a boundary in space

Adel Abdalllah
Updated July 17, 2017

*/
/*
Find node and link Instances within a boundary in space

Adel Abdalllah
Updated July 17, 2017

*/


Select DatasetAcronym,ObjectType,ObjectTypeCV,ObjectTypologyCV, AttributeName,InstanceName,InstanceNameCV,MasterNetworkName,ScenarioName, Sourcename, Methodname,
Longitude_x,Latitude_y

FROM Datasets

left join ObjectTypes on
ObjectTypes.Datasetid=Datasets.Datasetid 

left join Attributes on
Attributes.ObjectTypeid = Objecttypes.Objecttypeid

left join Mapping on 
Mapping.Attributeid = Attributes.Attributeid 

left join Instances on
instances.instanceid = Mapping.Instanceid

left join Scenariomapping on 
ScenarioMapping.Mappingid = Mapping.Mappingid

left join Scenarios on
Scenarios.ScenarioId=ScenarioMapping.Scenarioid 

left join MasterNetworks on
MasterNetworks.MasterNetworkid = Scenarios.MasterNetworkid 

left join Methods on
Methods.Methodid = Mapping.Methodid

left join Sources on Sources.Sourceid = Mapping.Sourceid 


WHERE  "AttributeName"='ObjectTypeInstances' AND 

-- specify the boundary of coordinates of the search domain in space 
-- this Boundary is for the parts of the upper Bear River Watershed 
("Instances"."Longitude_x">='-112.3' 
AND "Instances"."Longitude_x"<='-111.4'
AND "Instances"."Latitude_y">='41.3'
AND "Instances"."Latitude_y"<='42.100') 

--AND ObjectTypologyCV='Node'

AND (ObjectTypeCV='Reservoir' or ObjectTypeCV='Demand site' or ObjectTypeCV='Demand site' or ObjectTypeCV='Diversion')
--AND DatasetAcronym='WEAP'
--AND ScenarioName='USU WEAP Model 2017'

ORDER BY InstanceName DESC


