Instance: observation-fetal-presentation-not-named
InstanceOf: ObservationFetalPresentation
Title: "Observation - Fetal Presentation example [Fetus Not Named]"
Description: "Example of Observation-fetal-presentation profile (Fetus Not Named)"
Usage: #example
* meta
  * versionId = "3"
  * lastUpdated = "2023-04-05T20:29:54.672+00:00"
  * source = "#nJR8tVfWfpw8r2nz"
* status = #final
* code = $loinc#73761-9 "Fetal presentation--at birth [US Standard Certificate of Live Birth]"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#6096002 "Breech presentation (finding)"