#ruby tools/convertTestInstancesToSTU2.rb 

#create hash for mapping of links 
uris = {
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/BypassEditFlag' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag', 
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/input-race-and-ethnicity-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-input-race-and-ethnicity', 
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/coded-race-and-ethnicity-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coded-race-and-ethnicity', 
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-usual-work-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-emerging-issues-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-emerging-issues',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CityCode' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode', 
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/DistrictCode' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/StreetDesignator'=> 'http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetDesignator',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/StreetName' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/PreDirectional' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/PreDirectional',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/PostDirectional' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/PostDirectional',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/UnitOrAptNumber' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/UnitOrAptNumber',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/ExtensionPartialDateVitalRecords' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/ExtensionPartialDateTimeVitalRecords' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime',
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-within-city-limits-indicator-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator',
'"url": day' => '"url": http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day',
'"url": month' => '"url": http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month',
'"url": year' => '"url": http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year',
'"url": time' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Time',
'http://hl7.org/fhir/us/vrsandbox/CodeSystem/CodeSystem-death-pregnancy-status' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-pregnancy-status-cs',
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-local-observation-codes-vr' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-observations-cs' ,
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/codesystem-vr-component' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs',
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-race-code-cs',
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-recode-40-vr' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-race-recode-40-cs',
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-hispanic-origin-vr' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-hispanic-origin-cs',
'http://hl7.org/fhir/us/vrsandbox/StructureDefinition/' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/'
}

#global substitute 
def exchangeURLs(pOutputFile, pInputFile, uris)
    content = File.read(pInputFile)
    uris.each{|key, value|
        content=content.gsub(key,value)}
    File.open(pOutputFile, 'w') { |file| file.write(content) }
end

testInstancesForConvertingFolder = '/input/fsh/VRDR/testInstancesForConverting/'
testInstancesAfterConvertingFolder = '/input/fsh/VRDR/testInstancesAfterConverting/'
Dir.foreach(Dir.pwd + testInstancesForConvertingFolder) do |filename|
    next if filename == '.' or filename == '..'
    vOutputFile = File.open(Dir.pwd + testInstancesAfterConvertingFolder + filename, "w")
    vInputFile = File.open(Dir.pwd + testInstancesForConvertingFolder + filename)
    exchangeURLs(vOutputFile, vInputFile, uris)
end

