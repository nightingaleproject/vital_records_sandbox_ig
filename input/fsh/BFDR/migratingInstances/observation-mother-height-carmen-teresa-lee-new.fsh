Instance: observation-mother-height-carmen-teresa-lee-new
InstanceOf: ObservationMotherHeightNew
Title: "Observation - Mother Height - Carmen Teresa Lee"
Description: "Observation - Mother Height: Carmen Teresa Lee example"
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2023-04-06T00:30:15.636Z"
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-mother-height-vr"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#3137-7 "Body height Measured"
* subject = Reference(patient-mother-carmen-teresa-lee-new) "Patient - Mother (Carmen Teresa Lee)"
* effectiveDateTime = "2019-01-10"
* valueQuantity = 65 '[in_i]'