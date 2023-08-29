Instance: observation-gestational-age-at-delivery-babyg-quinn
InstanceOf: Observation
Title: "Observation - Gestational Age at Delivery - Baby G Quinn"
Description: "Observation - Gestational Age at Delivery: Baby G Quinn example"
Usage: #example
* meta
  * versionId = "4"
  * lastUpdated = "2023-04-06T00:29:54.673Z"
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-gestational-age-at-delivery-vr"
* status = #final
* code = $loinc#11884-4 "Gestational age Estimated"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* valueQuantity = 36 'wk'