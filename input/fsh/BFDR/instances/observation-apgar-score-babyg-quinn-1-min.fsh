Instance: observation-apgar-score-babyg-quinn-1-min
InstanceOf: Observation
Title: "Observation - Apgar Score - BabyG Quinn: 1 min"
Description: "Observation - Apgar Score: BabyG Quinn: 1 min example"
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-apgar-score-vr"
* status = #final
* code = $loinc#9272-6 "1 minute Apgar Score"
  * text = "1 minute Apgar Score"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* valueInteger = 5