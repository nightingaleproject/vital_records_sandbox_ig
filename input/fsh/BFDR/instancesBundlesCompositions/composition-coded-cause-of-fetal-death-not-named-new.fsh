Instance: composition-coded-cause-of-fetal-death-not-named-new
InstanceOf: CompositionCodedCauseOfFetalDeathNew
Title: "Composition - Coded Cause of Fetal Death - Fetus Not Named"
Description: "Composition - Coded Cause of Fetal Death: Fetus Not Named example"
Usage: #example
* extension[Extension-fetal-death-report-number]
  * valueIdentifier
    * type = $v2-0203#FDR
    * value = "9876"
* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27db"
* status = #final
* type = $loinc#86804-2 "Cause of death classification and related information Document"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named-new"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* date = "2019-01-09"
* author
  * reference = "Organization/organization-nchs"
  * display = "National Center for Health Statistics"
* title = "Coded Cause of Fetal Death"
* section[codedCauseOfFetalDeath]
  * title = "Coded Cause of Fetal Death"
  * code = $loinc#86804-2 "Cause of death classification and related information Document"
  * entry[0]
    * reference = "Condition/condition-coded-initiating-fetal-death-cause-or-condition"
    * display = "Condition - Coded Initiating Fetal Death Cause or Condition (Not Named)"
  * entry[+]
    * reference = "Condition/condition-coded-other-fetal-death-cause-or-condition-not-named"
    * display = "Condition - Coded Other Fetal Death Cause or Condition (Not Named)"