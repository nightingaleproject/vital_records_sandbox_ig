Instance: observation-number-previous-cesareans-carmen-teresa-lee-new
InstanceOf: ObservationNumberPreviousCesareansNew
Title: "Observations - Number Previous Cesareans - Carmen Teresa Lee"
Description: "Observations - Number Previous Cesareans: Carmen Teresa Lee example"
Usage: #example
// * meta
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-number-previous-cesareans-vr"
* status = #final
* code = $loinc#68497-7 "Previous cesarean deliveries #"
  * text = "Previous cesarean deliveries #"
* subject = Reference(patient-mother-carmen-teresa-lee-new) "Patient - Mother (Carmen Teresa Lee)"
* valueInteger = 1