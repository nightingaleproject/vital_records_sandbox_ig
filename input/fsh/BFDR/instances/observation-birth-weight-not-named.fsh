Instance: observation-birth-weight-not-named
InstanceOf: Observation
Title: "Observation - Birth Weight - Fetus Not Named"
Description: "Observation - Birth Weight: Fetus Not Named example"
Usage: #example
* meta
  * versionId = "8"
  * lastUpdated = "2023-04-06T00:25:56.512Z"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#8339-4 "Birth weight Measured"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* effectiveDateTime = "2019-02-10"
* valueQuantity = 1530 'g'