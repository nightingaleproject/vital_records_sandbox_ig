Instance: Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-24
InstanceOf: ConditionFetalDeathCauseOrCondition
Usage: #inline
* id = "condition-fetal-death-cause-or-condition-not-named"
* category[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[+] = $loinc#76060-3 "Initiating cause or condition of fetal death [US Standard Report of Fetal Death]"
* code = $sct#44223004 "Premature rupture of membranes (disorder)"
  * text = "Premature rupture of membranes (disorder)"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"