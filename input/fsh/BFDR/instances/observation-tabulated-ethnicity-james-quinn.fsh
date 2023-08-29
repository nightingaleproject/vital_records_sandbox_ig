Instance: observation-tabulated-ethnicity-james-quinn
InstanceOf: Observation
Title: "Observation - Tabulated Ethnicity - Vital Records - James Quinn"
Description: "Observation - Tabulated Ethnicity - Vital Records: James Quinn example"
Usage: #example
* meta
  * versionId = "2"
  * lastUpdated = "2023-04-06T00:31:29.518Z"
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-tabulated-ethnicity-vr"
* status = #final
* code = $loinc#80978-0 "Tabulated ethnicity [CDC]"
  * text = "Tabulated ethnicity [CDC]"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* focus = Reference(relatedperson-father-natural-james-brandon-quinn) "RelatedPerson - Father (James Brandon Quinn)"
* valueCodeableConcept = $v3-Ethnicity#2151-9 "Chicano"
  * text = "Chicano"