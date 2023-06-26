Instance: observation-birth-weight-babyg-quinn-common
InstanceOf: ObservationBirthWeightVitalRecords
Title: "Observation - Birth Weight example [Baby G Quinn]"
Description: "Example of Observation-birth-weight-vr profile (Baby G Quinn)"
Usage: #example
* meta
  * versionId = "7"
  * lastUpdated = "2022-10-12T23:18:58.323+00:00"
  * source = "#zy1lFJ5w7UGQJ0ds"
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#8339-4 "Birth weight Measured"
* subject
  * reference = "Patient/patient-child-babyg-quinn-common"
  * display = "BabyG Quinn"
* effectiveDateTime = "2019-01-10"
* valueQuantity = 2500 'g'