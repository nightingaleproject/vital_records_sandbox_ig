Instance: condition-coded-other-fetal-death-cause-or-condition-not-named
InstanceOf: ConditionCodedOtherFetalDeathCauseOrCondition
Title: "Condition - Coded Other Cause of Fetal Death"
Description: "Condition - Coded Other Cause of Fetal Death example"
Usage: #example
* category[us-core] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[codedOtherCauseOrCondition] = $loinc#92023-1 "Coded other significant causes or conditions of fetal death"
* code = $icd-10#P02.1 "Fetus and newborn affected by other forms of placental separation and haemorrhage"
  * text = "Fetus and newborn affected by other forms of placental separation and haemorrhage"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
