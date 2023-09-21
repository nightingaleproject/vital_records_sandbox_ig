Instance: observation-mother-delivery-weight-jada-ann-quinn
InstanceOf: Observation
Title: "Observation - Mother Delivery Weight - Jada Ann Quinn"
Description: "Observation - Mother Delivery Weight: Jada Ann Quinn example"
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-mother-delivery-weight-vr"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#69461-2 "Mother's body weight --at delivery"
* subject = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* effectiveDateTime = "2019-02-12"
* valueQuantity = 175 '[lb_av]'