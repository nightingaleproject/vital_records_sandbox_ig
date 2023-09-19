Instance: condition-coded-initiating-fetal-death-cause-or-condition
InstanceOf: ConditionCodedInitiatingFetalDeathCauseOrCondition
Title: "Condition - Coded Initiating Cause of Fetal Death"
Description: "Condition - Coded Initiating Cause of Fetal Death example"
Usage: #example
//* category[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[+] = $loinc#92022-3 "Coded initiating cause or condition of fetal death"
* code = $icd-10#P01.1 "Fetus and newborn affected by premature rupture of membranes"
  * text = "Fetus and newborn affected by premature rupture of membranes"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"