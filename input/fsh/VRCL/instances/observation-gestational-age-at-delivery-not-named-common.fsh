Instance: observation-gestational-age-at-delivery-not-named-common
InstanceOf: ObservationGestationalAgeAtDeliveryVitalRecords
Title: "Observation - Gestational Age at Delivery example [Fetus Not Named]"
Description: "Example of Observation-gestational-age-at-delivery profile-vr (Fetus Not Named)"
Usage: #example
* meta
  * versionId = "5"
  * lastUpdated = "2022-10-12T23:18:58.323+00:00"
  * source = "#GyIDyeySMnaCg6qW"
* status = #final
* code = $loinc#11884-4 "Gestational age Estimated"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named-common"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* valueQuantity = 20 'wk'