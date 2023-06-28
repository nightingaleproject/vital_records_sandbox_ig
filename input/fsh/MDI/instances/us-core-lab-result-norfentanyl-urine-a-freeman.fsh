Instance: us-core-lab-result-norfentanyl-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Norfentanyl Urine Freeman"
Description: "Observation - Toxicology Lab Result: Norfentanyl Urine Freeman example"
Usage: #example

* status = #final

* code = $loinc#43199-9 "Norfentanyl [Presence] in Urine"
  * text = "Norfentanyl [Presence] in Urine"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"