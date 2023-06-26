Instance: observation-pregnancy-risk-factor-jada-ann-quinn-4
InstanceOf: Observation
Title: "Observation - Pregnancy Risk Factor example [Jada Ann Quinn: Deliveries by Cesarean]"
Description: "Example of Observation-pregnancy-risk-factor (Jada Ann Quinn: Deliveries by Cesarean)"
Usage: #example
* meta
  * versionId = "8"
  * lastUpdated = "2023-04-05T20:31:12.099+00:00"
  * source = "#2hsG0rvbQMllO7qS"
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-pregnancy-risk-factor-vr"
* status = #final
* code = $loinc#73775-9 "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
  * text = "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
* subject = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* valueCodeableConcept = $sct#200144004 "Deliveries by cesarean (finding)"
  * text = "Deliveries by cesarean (finding)"