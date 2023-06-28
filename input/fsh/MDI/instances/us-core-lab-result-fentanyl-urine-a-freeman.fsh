Instance: us-core-lab-result-fentanyl-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Fentanyl Urine Freeman"
Description: "Observation - Toxicology Lab Result: Fentanyl Urine Freeman example"
Usage: #example
* meta
  * versionId = "10"
  * lastUpdated = "2022-08-16T00:44:09.899+00:00"
  * source = "#AShF0kvizcW1dt6C"
* status = #final
* category = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#11235-9 "fentaNYL [Presence] in Urine"
  * text = "fentaNYL [Presence] in Urine"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"