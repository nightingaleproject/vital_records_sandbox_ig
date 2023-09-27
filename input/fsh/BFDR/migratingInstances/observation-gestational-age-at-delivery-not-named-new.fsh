Instance: observation-gestational-age-at-delivery-not-named
InstanceOf: ObservationGestationalAgeAtDeliveryNew
Title: "Observation - Gestational Age at Delivery - Fetus Not Named"
Description: "Observation - Gestational Age at Delivery: Fetus Not Named example"
Usage: #example
// * meta
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-gestational-age-at-delivery-vr"
* status = #final
* code = $loinc#11884-4 "Gestational age Estimated"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* valueQuantity = 20 'wk'