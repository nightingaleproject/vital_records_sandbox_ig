Instance: observation-race-jada-ann-quinn
InstanceOf: ObservationRaceVitalRecords
Title: "Observation - Race example [Jada Ann Quinn]"
Description: "Example of Race Observation profile (Jada Ann Quinn)"
Usage: #example
* meta
  * versionId = "5"
  * lastUpdated = "2023-04-05T20:31:29.518+00:00"
  * source = "#UkRK03OPcJhDWH8s"
* status = #final
* code = $loinc#80977-2 "Tabulated race [CDC]"
  * text = "Tabulated race [CDC]"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* focus = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* valueCodeableConcept = $v2-0005#2054-5 "Black or African American"
  * text = "Black or African American"