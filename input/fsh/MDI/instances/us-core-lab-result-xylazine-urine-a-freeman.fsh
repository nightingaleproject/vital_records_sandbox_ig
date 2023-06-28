Instance: us-core-lab-result-xylazine-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Xylazine Urine Freeman"
Description: "Observation - Toxicology Lab Result: Xylazine Urine Freeman example"
Usage: #example

* status = #final

* code = $loinc#12327-3 "Ketamine [Presence] in Urine"
  * text = "Ketamine [Presence] in Urine"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"