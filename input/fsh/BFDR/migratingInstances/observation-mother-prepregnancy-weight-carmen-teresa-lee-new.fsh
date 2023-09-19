Instance: observation-mother-prepregnancy-weight-carmen-teresa-lee-new
InstanceOf: ObservationMotherPrepregnancyWeightNew
Title: "Observation - Mother Prepregnancy Weight - Carmen Teresa Lee"
Description: "Observation - Mother Prepregnancy Weight: Carmen Teresa Lee example"
Usage: #example
// * meta
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-mother-prepregnancy-weight-vr"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#56077-1 "Body weight --pre current pregnancy"
* subject = Reference(patient-mother-carmen-teresa-lee-new) "Patient - Mother (Carmen Teresa Lee)"
* effectiveDateTime = "2019-05-20"
* valueQuantity = 180 '[lb_av]'