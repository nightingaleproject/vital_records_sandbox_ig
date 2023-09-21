Instance: observation-method-of-disposition-not-named
InstanceOf: ObservationMethodOfDisposition
Title: "Observation - Method of Disposition - Fetus Not Named"
Description: "Observation - Method of Disposition: Fetus Not Named example"
Usage: #example
* status = #final
* code = $loinc#88241-5 "Fetal remains disposition method"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#449971000124106 "Patient status determination, deceased and buried (finding)"
  * text = "Patient status determination, deceased and buried (finding)"