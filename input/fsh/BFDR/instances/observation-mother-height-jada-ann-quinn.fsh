Instance: observation-mother-height-jada-ann-quinn
InstanceOf: ObservationMotherHeightVitalRecords
Title: "Observation - Mother Height example [Jada Ann Quinn]"
Description: "Example of observation-mother-height profile (Jada Ann Quinn)"
Usage: #example
* meta
  * versionId = "8"
  * lastUpdated = "2023-04-05T20:30:15.637+00:00"
  * source = "#7MCOWmUZYedHJxlL"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#3137-7 "Body height Measured"
* subject = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* effectiveDateTime = "2019-02-10"
* valueQuantity = 67 '[in_i]'