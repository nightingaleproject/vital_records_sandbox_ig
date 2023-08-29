Instance: condition-fetal-death-other-significant-cause-not-named
InstanceOf: ConditionFetalDeathOtherCauseOrCondition
Title: "Condition - Fetal Death Other Cause or Condition - Fetus Not Named"
Description: "Condition - Fetal Death Other Cause or Condition: Fetus Not Named example"
Usage: #example
* meta
  * versionId = "5"
  * lastUpdated = "2023-06-21T08:06:21.209Z"
* category[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[+] = $loinc#76061-1 "Other significant causes or conditions of fetal death [US Standard Report of Fetal Death]"
* code = $sct#237292005 "Placental insufficiency (disorder)"
  * text = "Placental insufficiency (disorder)"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"