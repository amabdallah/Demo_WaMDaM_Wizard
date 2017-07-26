
SELECT DatasetAcronym,AttributeName,AttributeNameCV,
InstanceName,Value,DateTimeStamp,WaterOrCalendarYear,strftime('%m/%Y', DateTimeStamp) as YearMonth,SUM(Value)/43559.9*60*60*24 As CumulativeMontly,

Case 
WHEN 
WaterOrCalendarYear='WaterYear'
THEN

Case 
 WHEN strftime('%m', DateTimeStamp) ='10' 
or  strftime('%m', DateTimeStamp) ='11'
or  strftime('%m', DateTimeStamp) ='12'
 THEN
date(DateTimeStamp,'-1 year')
else 
DateTimeStamp
END 
else 
DateTimeStamp 
End As CalenderYear

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

WHERE InstanceName='BEAR RIVER BL STEWART DAM NR MONTPELIER, ID'

GROUP BY DatasetAcronym,AttributeName,AttributeNameCV,
InstanceName,WaterOrCalendarYear,YearMonth
