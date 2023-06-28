Instance: us-core-lab-result-acetylfentanyl-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Acetylfentanyl Urine Freeman"
Description: "Observation - Toxicology Lab Result: Acetylfentanyl Urine Freeman example"
Usage: #example
* meta
  * versionId = "10"
  * lastUpdated = "2022-08-16T00:44:09.889+00:00"
  * source = "#k5Z5nkTqhiP5DmJB"
* status = #final
* category = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#74810-3 "Acetyl fentanyl [Presence] in Urine by Confirmatory method"
  * text = "Acetyl fentanyl [Presence] in Urine by Confirmatory method"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"