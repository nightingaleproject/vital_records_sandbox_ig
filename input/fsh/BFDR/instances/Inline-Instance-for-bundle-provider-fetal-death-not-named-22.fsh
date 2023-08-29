Instance: Inline-Instance-for-bundle-provider-fetal-death-not-named-22
InstanceOf: Observation
Usage: #inline
* id = "observation-birth-weight-not-named"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#8339-4 "Birth weight Measured"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* effectiveDateTime = "2019-02-10"
* valueQuantity = 1530 'g'