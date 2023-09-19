Instance: observation-race-tom-yan-lee
InstanceOf: Observation
Title: "Observation - Race - Vital Records - Tom Yan Lee"
Description: "Observation - Race - Vital Records: Tom Yan Lee example"
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-race-vr"
* status = #final
* code = $loinc#80977-2 "Tabulated race [CDC]"
  * text = "Tabulated race [CDC]"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* focus = Reference(relatedperson-father-natural-tom-yan-lee) "RelatedPerson - Father (Tom Yan Lee)"
* valueCodeableConcept = urn:oid:2.16.840.1.113883.6.238#2054-5 "Black or African American"
  * text = "Black or African American"