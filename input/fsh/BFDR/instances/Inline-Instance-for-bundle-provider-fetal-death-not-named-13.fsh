Instance: Inline-Instance-for-bundle-provider-fetal-death-not-named-13
InstanceOf: Observation
Usage: #inline
* id = "observation-mother-prepregnancy-weight-carmen-teresa-lee"
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-mother-prepregnancy-weight-vr"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#56077-1 "Body weight --pre current pregnancy"
* subject = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
* effectiveDateTime = "2019-05-20"
* valueQuantity = 180 '[lb_av]'