Instance: Inline-Instance-for-bundle-provider-live-birth-babyg-quinn-19
InstanceOf: Observation
Usage: #inline
* id = "observation-mother-prepregnancy-weight-jada-ann-quinn"
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-mother-prepregnancy-weight-vr"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#56077-1 "Body weight --pre current pregnancy"
* subject = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* effectiveDateTime = "2019-06-20"
* valueQuantity = 145 '[lb_av]'