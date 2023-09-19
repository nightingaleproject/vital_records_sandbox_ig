Instance: observation-ssn-requested-for-child-babyg-quinn
InstanceOf: ObservationSSNRequestedForChild
Title: "Observation - SSN Requested for Child - BabyG Quinn"
Description: "Observation - SSN Requested for Child: BabyG Quinn example"
Usage: #example
* status = #final
* code = $loinc#87295-2 "Social Security Number was requested"
  * text = "Social security number requested for child"
* subject
  * reference = "Patient/patient-child-babyg-quinn"
  * display = "BabyG Quinn"
* focus
  * reference = "Patient/patient-mother-jada-ann-quinn"
  * display = "Patient - Mother (Jada Ann Quinn)"
* valueBoolean = true