Instance: observation-planned-to-deliver-at-home-not-named
InstanceOf: ObservationPlannedToDeliverAtHome
Title: "Observation - Planned to Delivery at Home example [Fetus Not Named]"
Description: "Example of observation-planned-to-deliver-at-home profile (Fetus Not Named)"
Usage: #example
* meta
  * versionId = "3"
  * lastUpdated = "2023-04-05T20:31:12.130+00:00"
  * source = "#wH0KyrJXsbqahJKq"
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