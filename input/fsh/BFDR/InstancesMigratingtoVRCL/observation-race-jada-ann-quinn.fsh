Instance: observation-race-jada-ann-quinn
InstanceOf: ObservationRaceVitalRecords
// InstanceOf: Observation
Title: "Observation - Race - Vital Records - Jada Ann Quinn"
Description: "Observation - Race - Vital Records: Jada Ann Quinn example"
Usage: #example
* status = #final
* code = $loinc#80977-2 "Tabulated race [CDC]"
  * text = "Tabulated race [CDC]"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* focus = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* effectiveDateTime = "2019-12-02"
* performer = Reference(patient-mother-jada-ann-quinn)
* valueCodeableConcept = urn:oid:2.16.840.1.113883.6.238#2054-5 "Black or African American"
  * text = "Black or African American"