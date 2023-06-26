Profile: ConditionCodedInitiatingFetalDeathCauseOrCondition
Parent: Condition
Id: Condition-coded-initiating-fetal-death-cause-or-condition
Title: "Condition - Coded Initiating Fetal Death Cause or Condition"
Description: "This profile represents the coded initiating cause/condition of fetal death."
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2023-04-25T05:55:13.935+00:00"
* ^meta.source = "#4eYiFNvWyC0wasdV"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "This profile represents the coded initiating cause/condition of fetal death."
* category = $loinc#92022-3
  * ^short = "Coded initiating cause or condition of fetal death"
* code from $2.16.840.1.114222.4.11.7933 (required)
  * ^short = "This value set contains the ICD10 codes for causes of fetal death as defined by the ICD-10-Mortality Fetal Manual (2016)."
  * ^definition = "This value set contains the ICD10 codes for causes of fetal death as defined by the ICD-10-Mortality Fetal Manual (2016). Defined as the following, a cause of fetal death is the morbid condition or disease process, abnormality, injury, or poisoning leading directly to fetal death. The initiating cause of fetal death is the disease or injury, which initiated the chain of morbid events leading directly to death or the circumstances of the accident or violence, which produced fatal injury. A fetal death often results from the combined effect of two or more conditions. These conditions may be completely unrelated, arising independently of each other or they may be causally related to each other; that is, one cause may lead to another which in turn, leads to a third cause, etc."
  * ^binding.description = "Cause of Fetal Death ICD-10"
* subject only Reference(PatientDecedentFetusVitalRecords)