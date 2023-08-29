Instance: observation-tabulated-ethnicity-tom-yan-lee
InstanceOf: Observation
Title: "Observation - Tabulated Ethnicity - Vital Records - Tom Yan Lee"
Description: "Observation - Tabulated Ethnicity - Vital Records: Tom Yan Lee example"
Usage: #example
* meta
  * versionId = "2"
  * lastUpdated = "2023-04-06T00:31:29.516Z"
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-tabulated-ethnicity-vr"
* status = #final
* code = $loinc#80978-0 "Tabulated ethnicity [CDC]"
  * text = "Tabulated ethnicity [CDC]"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* focus = Reference(relatedperson-father-natural-tom-yan-lee) "RelatedPerson - Father (Tom Yan Lee)"
* valueCodeableConcept = $v3-Ethnicity#2151-9 "Chicano"
  * text = "Chicano"