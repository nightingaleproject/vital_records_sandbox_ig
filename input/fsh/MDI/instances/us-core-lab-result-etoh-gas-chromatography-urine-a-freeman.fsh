Instance: us-core-lab-result-etoh-gas-chromatography-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Ethanol Urine Freeman"
Description: "Observation - Toxicology Lab Result: Ethanol Urine Freeman example"
Usage: #example
* meta
  * versionId = "10"
  * lastUpdated = "2022-08-16T00:44:09.890+00:00"
  * source = "#dLtWokYVzZ0rdLla"
* status = #final
* category = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#46983-3 "Ethanol [Mass/volume] in Urine by Confirmatory method"
  * text = "Ethanol [Mass/volume] in Urine by Confirmatory method"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"