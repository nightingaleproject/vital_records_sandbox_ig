Instance: Inline-Instance-for-bundle-jurisdiction-live-birth-babyg-quinn-18
InstanceOf: Observation
Usage: #inline
* id = "observation-mother-height-jada-ann-quinn"
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-mother-height-vr"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#3137-7 "Body height Measured"
* subject = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* effectiveDateTime = "2019-02-10"
* valueQuantity = 67 '[in_i]'