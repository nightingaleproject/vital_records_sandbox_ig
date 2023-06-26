Instance: observation-birth-weight-babyg-quinn
InstanceOf: ObservationBirthWeightVitalRecords
Title: "Observation - Birth Weight example [Baby G Quinn]"
Description: "Example of observation-birth-weight profile (Baby G Quinn)"
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2023-04-05T20:25:56.512+00:00"
  * source = "#jawMoiszOpYzCY6q"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#8339-4 "Birth weight Measured"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* effectiveDateTime = "2019-02-10"
* valueQuantity = 2500 'g'