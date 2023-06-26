Instance: observation-fetal-death-time-point-not-named
InstanceOf: ObservationFetalDeathTimePoint
Title: "Observation - Observation Estimated Fetal Death Time Point example [Fetus Not Named]"
Description: "Example of Observation-estimated-fetal-death-time-point profile (Fetus Not Named)"
Usage: #example
* meta
  * versionId = "3"
  * lastUpdated = "2023-04-05T20:29:42.491+00:00"
  * source = "#T6dG5eOTjNFLQNqv"
* status = #final
* code = $loinc#73811-2 "Estimated timing of fetal death [US Standard Report of Fetal Death]"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#434631000124100 "Fetal intrapartum death after first assessment (event)"