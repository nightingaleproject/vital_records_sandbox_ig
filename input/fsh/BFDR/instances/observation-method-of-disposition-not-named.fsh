Instance: observation-method-of-disposition-not-named
InstanceOf: ObservationMethodOfDisposition
Title: "Observation - Method of Disposition example [Fetus Not Named]"
Description: "Example of Observation-method-of-disposition profile (Fetus Not Named)"
Usage: #example
* meta
  * versionId = "3"
  * lastUpdated = "2023-04-05T20:30:15.636+00:00"
  * source = "#wKsIBemwuf0GQkrk"
* status = #final
* code = $loinc#88241-5 "Fetal remains disposition method"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#449971000124106 "Patient status determination, deceased and buried (finding)"
  * text = "Patient status determination, deceased and buried (finding)"