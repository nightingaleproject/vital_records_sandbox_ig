Instance: observation-birth-weight-babyg-quinn
InstanceOf: Observation
Title: "Observation - Birth Weight - Baby G Quinn"
Description: "Observation - Birth Weight: Baby G Quinn example"
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-birth-weight-vr"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#8339-4 "Birth weight Measured"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* effectiveDateTime = "2019-02-10"
* valueQuantity = 2500 'g'