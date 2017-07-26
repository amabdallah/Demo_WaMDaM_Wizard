-- 4.81 TimeSeries

/*
This query shows time series data values, their time stamps and time series metadata

Result:
Time series data for a specific attribute 
WaM-DaM keeps track of the meanings of data values, their units, to what instance they apply too.... 
*/

SELECT DISTINCT DatasetAcronym,ObjectType,ObjectTypeCV,AttributeName,AttributeNameCV,AttributeDataTypeCV,
InstanceName,InstanceNameCV,
ScenarioName,
AggregationStatisticCV,
AggregationInterval,IntervalTimeUnitCV


FROM "Datasets"

Left JOIN "ObjectTypes" 
ON "ObjectTypes"."DatasetID"="Datasets"."DatasetID"

-- Join the Objects to get their attributes  
Left JOIN  "Attributes"
ON "Attributes"."ObjectTypeID"="ObjectTypes"."ObjectTypeID"

Left JOIN "Mapping"
ON Mapping.AttributeID= Attributes.AttributeID


Left JOIN "Instances" 
ON "Instances"."InstanceID"="Mapping"."InstanceID"

Left JOIN "DataValuesMapper" 
ON "DataValuesMapper"."DataValuesMapperID"="Mapping"."DataValuesMapperID"

LEFT JOIN "ScenarioMapping"
ON "ScenarioMapping"."MappingID"="Mapping"."MappingID"

Left JOIN "Scenarios" 
ON "Scenarios"."ScenarioID"="ScenarioMapping"."ScenarioID"

Left JOIN "MasterNetworks" 
ON "MasterNetworks"."MasterNetworkID"="Scenarios"."MasterNetworkID"

Left JOIN "TimeSeries" 
ON "TimeSeries"."DataValuesMapperID"="DataValuesMapper"."DataValuesMapperID"

Left JOIN "TimeSeriesValues" 
ON "TimeSeriesValues"."TimeSeriesID"="TimeSeries"."TimeSeriesID"

-- Join the DataValuesMapper to get their SeasonalParameters   
LEFT JOIN SeasonalParameters
ON SeasonalParameters.DataValuesMapperID = DataValuesMapper.DataValuesMapperID 

WHERE InstanceNameCV='USGS 10046500 BEAR RIVER BL STEWART DAM NR MONTPELIER, ID'   AND AttributeNameCV='Flow'
