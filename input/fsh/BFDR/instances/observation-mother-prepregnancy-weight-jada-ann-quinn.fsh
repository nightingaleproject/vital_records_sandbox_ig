Instance: observation-mother-prepregnancy-weight-jada-ann-quinn
InstanceOf: ObservationMotherPrepregnancyWeightVitalRecords
Title: "Observation - Mother Prepregnancy Weight example [Jada Ann Quinn]"
Description: "Example of observation-mother-prepregnancy-weight profile (Jada Ann Quinn)"
Usage: #example
* meta
  * versionId = "7"
  * lastUpdated = "2023-04-05T20:30:24.883+00:00"
  * source = "#mEMwIFqzOlvkpvPl"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#56077-1 "Body weight --pre current pregnancy"
* subject = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* effectiveDateTime = "2019-06-20"
* valueQuantity = 145 '[lb_av]'