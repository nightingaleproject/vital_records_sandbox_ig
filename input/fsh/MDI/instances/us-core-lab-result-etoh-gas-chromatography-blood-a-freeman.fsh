Instance: us-core-lab-result-etoh-gas-chromatography-blood-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Ethanol Blood Freeman"
Description: "Observation - Toxicology Lab Result: Ethanol Blood Freeman example"
Usage: #example
* meta
  * versionId = "11"
  * lastUpdated = "2022-08-16T00:44:09.890+00:00"
  * source = "#lKi0lxRBL0rbkhoI"
* status = #final
* category = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#56478-1 "Ethanol [Mass/volume] in Blood by Gas chromatography"
  * text = "Ethanol [Mass/volume] in Blood by Gas chromatography"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "0.145 g/dL"
* specimen.reference = "Specimen/specimen-blood-toxicology-a-freeman"