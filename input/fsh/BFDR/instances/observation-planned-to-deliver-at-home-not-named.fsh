Instance: observation-planned-to-deliver-at-home-not-named
InstanceOf: ObservationPlannedToDeliverAtHome
Title: "Observation - Planned to Delivery at Home - Fetus Not Named"
Description: "Observation - Planned to Delivery at Home: Fetus Not Named example"
Usage: #example
* status = #final
* code = $loinc#73765-0 "Mother Planned to deliver at home [US Standard Certificate of Live Birth]"
  * text = "Planned to deliver at home?"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* focus
  * reference = "Patient/patient-mother-carmen-teresa-lee"
  * display = "Patient - Mother (Carmen Teresa Lee)"
* valueBoolean = false