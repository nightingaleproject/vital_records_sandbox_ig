Instance: observation-number-live-births-this-delivery-jada-ann-quinn-new
InstanceOf: ObservationNumberLiveBirthsThisDeliveryNew
Title: "Observation - Number Live Births This Delivery - Jada Ann Quinn"
Description: "Observation - Number Live Births This Delivery: Jada Ann Quinn example"
Usage: #example
// * meta
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-number-live-births-this-delivery-vr"
* status = #final
* code = $loinc#73773-4 "Number of infants in this delivery delivered alive"
* subject = Reference(patient-mother-jada-ann-quinn-new) "Patient - Mother (Jada Ann Quinn)"
* focus = Reference(patient-child-babyg-quinn-new) "BabyG Quinn"
* valueInteger = 2