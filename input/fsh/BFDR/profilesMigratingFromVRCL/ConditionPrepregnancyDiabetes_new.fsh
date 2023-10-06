Profile: ConditionPrepregnancyDiabetesNew
Parent: USCoreConditionProblemsHealthConcernsProfile
Id: Condition-prepregnancy-diabetes-vr
Title: "Condition - Prepregnancy Diabetes Vital Records"
Description: "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy diabetes."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-04-19T02:09:32.065+00:00"
* ^meta.source = "#N0ICzzZo08A1PMpg"
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy diabetes."
* code = $sct#73211009
  * ^short = "Diabetes mellitus (disorder)"
* subject only Reference(PatientMotherVitalRecordsNew)