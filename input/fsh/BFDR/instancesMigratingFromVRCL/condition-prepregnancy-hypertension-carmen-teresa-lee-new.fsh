Instance: condition-prepregnancy-hypertension-carmen-teresa-lee
InstanceOf: ConditionPrepregnancyHypertensionNew
Title: "Condition - Prepregnancy Hypertension - Carmen Teresa Lee"
Description: "Condition - Prepregnancy Hypertension: Carmen Teresa Lee example"
Usage: #example
<<<<<<< HEAD:input/fsh/BFDR/instances/condition-prepregnancy-hypertension-carmen-teresa-lee.fsh
* category[us-core] = $condition-category#problem-list-item
=======
* category = $condition-category#problem-list-item
* clinicalStatus = $condition-clinical#active "Active"
  * text = "Active"
>>>>>>> main:input/fsh/BFDR/instancesMigratingFromVRCL/condition-prepregnancy-hypertension-carmen-teresa-lee-new.fsh
* code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
  * text = "Hypertensive disorder, systemic arterial (disorder)"
* subject = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
* onsetDateTime = "2015-02-12"