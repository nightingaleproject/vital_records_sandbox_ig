Instance: observation-mother-prepregnancy-weight-jada-ann-quinn
InstanceOf: ObservationMotherPrepregnancyWeightNew
Title: "Observation - Mother Prepregnancy Weight - Jada Ann Quinn"
Description: "Observation - Mother Prepregnancy Weight: Jada Ann Quinn example"
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-mother-prepregnancy-weight-vr"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#56077-1 "Body weight --pre current pregnancy"
* subject = Reference(patient-mother-jada-ann-quinn-new) "Patient - Mother (Jada Ann Quinn)"
* effectiveDateTime = "2019-06-20"
* valueQuantity = 145 '[lb_av]'