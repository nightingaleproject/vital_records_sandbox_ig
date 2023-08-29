Instance: observation-pregnancy-risk-factor-jada-ann-quinn-4
InstanceOf: Observation
Title: "Observation - Pregnancy Risk Factor - Jada Ann Quinn: Deliveries by Cesarean"
Description: "Observation - Pregnancy Risk Factor: Jada Ann Quinn: Deliveries by Cesarean example"
Usage: #example
* meta
  * versionId = "9"
  * lastUpdated = "2023-06-21T09:17:18.986Z"
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-previous-cesarean-vr"
* status = #final
* code = $loinc#73775-9 "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
  * text = "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
* subject = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* valueCodeableConcept = $sct#200144004 "Deliveries by cesarean (finding)"
  * text = "Deliveries by cesarean (finding)"