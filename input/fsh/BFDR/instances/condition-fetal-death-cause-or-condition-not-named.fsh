Instance: condition-fetal-death-cause-or-condition-not-named
InstanceOf: ConditionFetalDeathCauseOrCondition
Title: "Condition - Fetal Death Cause or Condition - Fetus Not Named"
Description: "Condition - Fetal Death Cause or Condition: Fetus Not Named example"
Usage: #example
* meta
  * versionId = "3"
  * lastUpdated = "2023-06-21T08:06:20.835Z"
* category[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[+] = $loinc#76060-3 "Initiating cause or condition of fetal death [US Standard Report of Fetal Death]"
* code = $sct#44223004 "Premature rupture of membranes (disorder)"
  * text = "Premature rupture of membranes (disorder)"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"