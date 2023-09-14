Instance: observation-number-births-now-living-jada-ann-quinn-new
InstanceOf: ObservationNumberBirthsNowLivingNew
Title: "Observation - Number Births Now Living - Jada Ann Quinn"
Description: "Observation - Number Births Now Living: Jada Ann Quinn example"
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2023-04-06T00:30:36.400Z"
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-number-births-now-living-vr"
* status = #final
* code = $loinc#11638-4 "[#] Births.still living"
  * text = "[#] Births.still living"
* subject = Reference(patient-mother-jada-ann-quinn-new) "Patient - Mother (Jada Ann Quinn)"
* valueInteger = 1