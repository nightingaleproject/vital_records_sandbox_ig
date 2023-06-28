Instance: us-core-lab-result-xylazine-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Xylazine Urine Freeman"
Description: "Observation - Toxicology Lab Result: Xylazine Urine Freeman example"
Usage: #example
* meta
  * versionId = "10"
  * lastUpdated = "2022-08-16T00:44:09.931+00:00"
  * source = "#xOelUWT1C1tNQ2P7"
* status = #final
* category = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#12327-3 "Ketamine [Presence] in Urine"
  * text = "Ketamine [Presence] in Urine"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"