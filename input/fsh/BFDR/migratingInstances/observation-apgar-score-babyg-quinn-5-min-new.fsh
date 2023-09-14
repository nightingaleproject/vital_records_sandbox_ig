Instance: observation-apgar-score-babyg-quinn-5-min-new
InstanceOf: ObservationApgarScoreNew
Title: "Observation - Apgar Score - BabyG Quinn: 5 min"
Description: "Observation - Apgar Score: BabyG Quinn: 5 min example"
Usage: #example
* meta
  * versionId = "4"
  * lastUpdated = "2023-04-06T00:25:56.512Z"
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-apgar-score-vr"
* status = #final
* code = $loinc#9274-2 "5 minute Apgar Score"
  * text = "5 minute Apgar Score"
* subject = Reference(patient-child-babyg-quinn-new) "BabyG Quinn"
* valueInteger = 7