#ruby tools/convertTestInstancesToSTU2.rb 

#create hash for mapping of links 
uris = {
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/BypassEditFlag' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag', #profile
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/input-race-and-ethnicity-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-input-race-and-ethnicity', #profile
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/coded-race-and-ethnicity-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coded-race-and-ethnicity', #profile
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-usual-work-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work', #profile
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-emerging-issues-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-emerging-issues', #profile
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CityCode' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/DistrictCode' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/StreetDesignator'=> 'http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetDesignator', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/StreetName' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/StreetNumber' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetNumber', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/PreDirectional' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/PreDirectional', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/PostDirectional' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/PostDirectional', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/UnitOrAptNumber' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/UnitOrAptNumber', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/ExtensionPartialDateVitalRecords' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/ExtensionPartialDateTimeVitalRecords' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime', #extension
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-within-city-limits-indicator-vr' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator', #extension
'"url": "day"' => '"url": "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"', #extension 
'"url": "month"' => '"url": "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"', #extension 
'"url": "year"' => '"url": "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"', #extension
'"url": "time"' => '"url": "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Time"', #extension
'http://hl7.org/fhir/us/vrsandbox/CodeSystem/CodeSystem-death-pregnancy-status' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-pregnancy-status-cs', #codesystem
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-local-observation-codes-vr' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-observations-cs' , #codesystem
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/codesystem-vr-component' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs', #codesystem
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-race-code-cs', #codesystem
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-recode-40-vr' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-race-recode-40-cs', #codesystem
'http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-hispanic-origin-vr' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-hispanic-origin-cs', #codesystem
'http://hl7.org/fhir/us/vrsandbox/StructureDefinition/' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/', #general change
'http://hl7.org/fhir/us/vrsandbox/CodeSystem/' => 'http://hl7.org/fhir/us/vrdr/CodeSystem/' #general change
}

#this is needed because Decedent examples in VRDR use partialDate extension for birthdate. this was changed to partialDateTime extension in the our new abstract Patien profile
decedentOnlyUris = {
'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/ExtensionPartialDateTimeVitalRecords' => 'http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate'
}

#global substitute 
def exchangeURLs(pOutputFile, pInputFile, uris)
    content = File.read(pInputFile)
    uris.each{|key, value|
        content=content.gsub(key,value)}
    File.open(pOutputFile, 'w') { |file| file.write(content) }
    return pOutputFile
end

testInstancesBeforeConvertingFolder = '/input/fsh/VRDR/testInstancesBeforeConverting/'
testInstancesAfterConvertingFolder = '/input/fsh/VRDR/testInstancesAfterConverting/'
Dir.foreach(Dir.pwd + testInstancesBeforeConvertingFolder) do |filename|
    next if filename == '.' or filename == '..'
    vOutputFile = File.open(Dir.pwd + testInstancesAfterConvertingFolder + filename, "w")
    vInputFile = File.open(Dir.pwd + testInstancesBeforeConvertingFolder + filename)
    if filename.include? "Patient-Decedent-Example"
        vInputFile = exchangeURLs(vOutputFile, vInputFile, decedentOnlyUris)
    end
    exchangeURLs(vOutputFile, vInputFile, uris)
end

