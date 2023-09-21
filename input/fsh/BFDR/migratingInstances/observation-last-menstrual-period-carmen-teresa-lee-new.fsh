Instance: observation-last-menstrual-period-carmen-teresa-lee-new
InstanceOf: ObservationLastMenstrualPeriodNew
Title: "Observation - Last Menstrual Period - Carmen Teresa Lee"
Description: "Observation - Last Menstrual Period: Carmen Teresa Lee example"
Usage: #example
// * meta
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-last-menstrual-period-vr"
* status = #final
* code = $loinc#8665-2 "Last menstrual period start date"
  * text = "Last menstrual period start date"
* subject = Reference(patient-mother-carmen-teresa-lee-new) "Patient - Mother (Carmen Teresa Lee)"
* valueDateTime = "2018-04-18"