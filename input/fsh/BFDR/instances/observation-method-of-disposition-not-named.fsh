Instance: observation-method-of-disposition-not-named
InstanceOf: ObservationMethodOfDisposition
Title: "Observation - Method of Disposition example [Fetus Not Named]"
Description: "Example of Observation-method-of-disposition profile (Fetus Not Named)"
Usage: #example
* status = #final
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#449971000124106 "Patient status determination, deceased and buried (finding)"
  * text = "Patient status determination, deceased and buried (finding)"