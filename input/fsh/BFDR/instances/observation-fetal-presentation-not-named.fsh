Instance: observation-fetal-presentation-not-named
InstanceOf: ObservationFetalPresentation
Title: "Observation - Fetal Presentation - Fetus Not Named"
Description: "Observation - Fetal Presentation: Fetus Not Named example"
Usage: #example
* status = #final
* code = $loinc#73761-9 "Fetal presentation--at birth [US Standard Certificate of Live Birth]"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#6096002 "Breech presentation (finding)"