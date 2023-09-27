Instance: observation-number-births-now-living-carmen-teresa-lee
InstanceOf: ObservationNumberBirthsNowLivingNew
Title: "Observation - Number of Births Now Living - Carmen Teresa Lee"
Description: "Observation - Number of Births Now Living: Carmen Teresa Lee example"
Usage: #example
// * meta
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-number-births-now-living-vr"
* status = #final
* code = $loinc#11638-4 "[#] Births.still living"
  * text = "[#] Births.still living"
* subject = Reference(patient-mother-carmen-teresa-lee-new) "Patient - Mother (Carmen Teresa Lee)"
* valueInteger = 1