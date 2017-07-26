

Select DISTINCT DatasetAcronym,ObjectType,ObjectTypeCV,ObjectTypologyCV, MasterNetworkName,ScenarioName
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


WHERE  "AttributeName"='ObjectTypeInstances' AND InstanceName!='null' AND ObjectType NOT like '%Global Attributes%'

AND("Instances"."Longitude_x">='-112.3' 
AND "Instances"."Longitude_x"<='-111.4'
AND "Instances"."Latitude_y">='41.3'
AND "Instances"."Latitude_y"<='42.100') 


