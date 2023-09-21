Instance: observation-gestational-age-at-delivery-babyg-quinn-new
InstanceOf: ObservationGestationalAgeAtDeliveryNew
Title: "Observation - Gestational Age at Delivery - Baby G Quinn"
Description: "Observation - Gestational Age at Delivery: Baby G Quinn example"
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-gestational-age-at-delivery-vr"
* status = #final
* code = $loinc#11884-4 "Gestational age Estimated"
* subject = Reference(patient-child-babyg-quinn-new) "BabyG Quinn"
* valueQuantity = 36 'wk'
