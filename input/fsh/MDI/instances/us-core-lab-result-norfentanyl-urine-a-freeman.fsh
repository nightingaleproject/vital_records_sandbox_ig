Instance: us-core-lab-result-norfentanyl-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Norfentanyl Urine Freeman"
Description: "Observation - Toxicology Lab Result: Norfentanyl Urine Freeman example"
Usage: #example
* meta
  * versionId = "10"
  * lastUpdated = "2022-08-16T00:44:09.931+00:00"
  * source = "#beQ4zcdJ3x7JlA0S"
* status = #final
* category = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#43199-9 "Norfentanyl [Presence] in Urine"
  * text = "Norfentanyl [Presence] in Urine"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"