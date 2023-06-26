Instance: observation-birth-weight-not-named
InstanceOf: Observation
Title: "Observation - Birth Weight example [Fetus Not Named]"
Description: "Example of Observation-birth-weight (Fetus Not Named)"
Usage: #example
* meta
  * versionId = "8"
  * lastUpdated = "2023-04-05T20:25:56.512+00:00"
  * source = "#bJYAx0CReak28M4i"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#8339-4 "Birth weight Measured"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* effectiveDateTime = "2019-02-10"
* valueQuantity = 1530 'g'