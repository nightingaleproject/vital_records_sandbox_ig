Instance: observation-gestational-age-at-delivery-not-named
InstanceOf: ObservationGestationalAgeAtDeliveryVitalRecords
Title: "Observation - Gestational Age at Delivery example [Fetus Not Named]"
Description: "Example of Observation-gestational-age-at-delivery profile (Fetus Not Named)"
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2023-04-05T20:29:54.672+00:00"
  * source = "#SQEU28lWULiTb8fV"
* status = #final
* code = $loinc#11884-4 "Gestational age Estimated"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* valueQuantity = 20 'wk'