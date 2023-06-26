Instance: observation-mother-height-carmen-teresa-lee
InstanceOf: ObservationMotherHeightVitalRecords
Title: "Observation - Mother Height example [Carmen Teresa Lee]"
Description: "Example of Observation-mother-height profile (Carmen Teresa Lee)"
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2023-04-05T20:30:15.636+00:00"
  * source = "#7LiInN54DYWCCCnD"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#3137-7 "Body height Measured"
* subject = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
* effectiveDateTime = "2019-01-10"
* valueQuantity = 65 '[in_i]'