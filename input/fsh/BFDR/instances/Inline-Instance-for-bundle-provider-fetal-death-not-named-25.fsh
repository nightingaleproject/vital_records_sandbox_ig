Instance: Inline-Instance-for-bundle-provider-fetal-death-not-named-25
InstanceOf: ConditionFetalDeathOtherCauseOrCondition
Usage: #inline
* id = "condition-fetal-death-other-significant-cause-not-named"
//* category[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[+] = $loinc#76061-1 "Other significant causes or conditions of fetal death [US Standard Report of Fetal Death]"
* code = $sct#237292005 "Placental insufficiency (disorder)"
  * text = "Placental insufficiency (disorder)"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"