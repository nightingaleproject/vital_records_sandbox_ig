Instance: observation-apgar-score-babyg-quinn-1-min
InstanceOf: ObservationApgarScoreNew
Title: "Observation - Apgar Score - BabyG Quinn: 1 min"
Description: "Observation - Apgar Score: BabyG Quinn: 1 min example"
Usage: #example
//* meta
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-apgar-score-vr"
* status = #final
* category = $observation-category#survey "Survey"
  * text = "Survey"
* code = $loinc#9272-6 "1 minute Apgar Score"
  * text = "1 minute Apgar Score"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* effectiveDateTime = "2019-12-02"
* performer = Reference(practitioner-vital-records-janet-seito)
* valueInteger = 5