Instance: us-core-lab-result-fentanyl-blood-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Fentanyl Blood Freeman"
Description: "Observation  - Toxicology Lab Result: Fentanyl Blood Freeman example"
Usage: #example
* meta
  * versionId = "9"
  * lastUpdated = "2022-08-16T00:44:09.899+00:00"
  * source = "#p6Xwgen4OETJwwWD"
* status = #final
* category = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#73938-3 "fentaNYL [Mass/volume] in Blood by Confirmatory method"
  * text = "fentaNYL [Mass/volume] in Blood by Confirmatory method"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "23 ng/mL"
* specimen.reference = "Specimen/specimen-blood-toxicology-a-freeman"