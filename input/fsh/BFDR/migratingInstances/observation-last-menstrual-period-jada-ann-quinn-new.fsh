Instance: observation-last-menstrual-period-jada-ann-quinn-new
InstanceOf: ObservationLastMenstrualPeriodNew
Title: "Observation - Last Menstrual Period - Jada Ann Quinn"
Description: "Observation - Last Menstrual Period: Jada Ann Quinn example"
Usage: #example
// * meta
  //TODO this will have to change
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-last-menstrual-period-vr"
* status = #final
* code = $loinc#8665-2 "Last menstrual period start date"
  * text = "Last menstrual period start date"
* subject = Reference(patient-mother-jada-ann-quinn-new) "Patient - Mother (Jada Ann Quinn)"
* valueDateTime = "2018-06-05"