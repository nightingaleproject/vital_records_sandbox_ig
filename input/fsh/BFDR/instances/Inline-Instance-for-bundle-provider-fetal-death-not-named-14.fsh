Instance: Inline-Instance-for-bundle-provider-fetal-death-not-named-14
InstanceOf: ObservationMotherReceivedWICFood
Usage: #inline
* id = "observation-mother-received-wic-food-carmen-teresa-lee"
* status = #final
* code = $loinc#87303-4 "Mother WIC food recipient"
  * text = "Did mother get WIC food for herself during this pregnancy?"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* focus
  * reference = "Patient/patient-mother-carmen-teresa-lee"
  * display = "Patient - Mother (Carmen Teresa Lee)"
* valueCodeableConcept = $v2-0532#N "No"