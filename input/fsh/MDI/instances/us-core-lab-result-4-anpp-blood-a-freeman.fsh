Instance: us-core-lab-result-4-anpp-blood-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - 4-anpp Blood Freeman"
Description: "Observation - Toxicology Lab Result:  4-anpp Blood Freeman example"
Usage: #example
* meta
  * versionId = "10"
  * lastUpdated = "2022-08-16T00:44:09.693+00:00"
  * source = "#opUtthEWlyIl2mWC"
* status = #final
* category = $observation-category#laboratory "Laboratory"
  * text = "Laboratory"
* code = $loinc#11072-6 "Despropionylfentanyl [Mass/volume] in Serum or Plasma"
  * text = "Despropionylfentanyl [Mass/volume] in Serum or Plasma"
* subject
  * reference = "Patient/us-core-patient-a-freeman"
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-blood-toxicology-a-freeman"