Instance: observation-number-prenatal-visits-jada-ann-quinn-new
InstanceOf: ObservationNumberPrenatalVisitsNew
Title: "Observation - Number Prenatal Visits - Jada Ann Quinn"
Description: "Observation - Number Prenatal Visits: Jada Ann Quinn example"
Usage: #example
* meta
  * versionId = "5"
  * lastUpdated = "2023-04-06T00:30:46.634Z"
  //TODO this will have to change
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-number-prenatal-visits-vr"
* status = #final
* code = $loinc#68493-6 "Prenatal visits for this pregnancy #"
  * text = "Prenatal visits for this pregnancy #"
* subject = Reference(patient-child-babyg-quinn-new) "BabyG Quinn"
* focus = Reference(patient-mother-jada-ann-quinn-new) "Patient - Mother (Jada Ann Quinn)"
* valueInteger = 8