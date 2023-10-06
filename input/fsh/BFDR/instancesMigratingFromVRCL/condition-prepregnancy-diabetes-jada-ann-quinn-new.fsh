Instance: condition-prepregnancy-diabetes-jada-ann-quinn
InstanceOf: ConditionPrepregnancyDiabetesNew
Title: "Condition - Prepregnancy Diabetes - Jada Ann Quinn"
Description: "Condition - Prepregnancy Diabetes: Jada Ann Quinn example"
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
  * text = "Active"
* category = $condition-category#problem-list-item
* code = $sct#73211009 "Diabetes mellitus (disorder)"
  * text = "Diabetes mellitus (disorder)"
* subject = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* onsetDateTime = "2015-02-12"