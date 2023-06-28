Instance: us-core-lab-result-acetylfentanyl-blood-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Acetylfentanyl Blood Freeman"
Description: "Observation - Toxicology Lab Result: Acetylfentanyl Blood Freeman example"
Usage: #example
* meta
  * versionId = "10"
  * lastUpdated = "2022-08-16T00:44:09.849+00:00"
  * source = "#pjRim4Uyf1gj6nMO"
* status = #final
* category = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#86223-5 "Acetyl norfentanyl [Mass/volume] in Serum, Plasma or Blood by Confirmatory method"
  * text = "Acetyl norfentanyl [Mass/volume] in Serum, Plasma or Blood by Confirmatory method"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "2 ng/ml"
* specimen.reference = "Specimen/specimen-blood-toxicology-a-freeman"