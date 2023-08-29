Instance: observation-race-james-quinn
InstanceOf: Observation
Title: "Observation - Race - Vital Records - James Quinn"
Description: "Observation - Race - Vital Records: James Quinn example"
Usage: #example
* meta
  * versionId = "4"
  * lastUpdated = "2023-06-22T01:24:18.811Z"
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-race-vr"
* status = #final
* code = $loinc#80977-2 "Tabulated race [CDC]"
  * text = "Tabulated race [CDC]"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* focus = Reference(relatedperson-father-natural-james-brandon-quinn) "RelatedPerson - Father (James Brandon Quinn)"
* valueCodeableConcept = urn:oid:2.16.840.1.113883.6.238#2054-5 "Black or African American"
  * text = "Black or African American"