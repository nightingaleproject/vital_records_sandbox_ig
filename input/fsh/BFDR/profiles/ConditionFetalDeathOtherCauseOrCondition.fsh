Profile: ConditionFetalDeathOtherCauseOrCondition
Parent: Condition
Id: Condition-fetal-death-other-cause-or-condition
Title: "Condition - Fetal Death Other Cause or Condition"
Description: "This Condition profile represents another significant cause or condition for the death of the fetus."
* ^meta.versionId = "17"
* ^meta.lastUpdated = "2023-04-25T05:55:23.787+00:00"
* ^meta.source = "#gjubjqS8Sxyd417r"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "Another significant cause or condition for the death of the fetus."
* category = $loinc#76061-1
  * ^short = "Other significant causes or conditions of fetal death [US Standard Report of Fetal Death]"
* code from PHVS_FetalDeathCauseOrCondition_NCHS (required)
  * ^short = "The value sets contains the list of values used to report initiating cause or condition or other significant causes or conditions contributing to fetal death."
  * ^binding.description = "Fetal Death Cause or Condition (NCHS)"
  * coding MS
    * ^short = "The type of cause or condition should be selected from the bound value set."
  * text MS
    * ^short = "Any further specification should be entered as free text to fully record the provider's view of the cause."
* subject only Reference(PatientDecedentFetusVitalRecords)