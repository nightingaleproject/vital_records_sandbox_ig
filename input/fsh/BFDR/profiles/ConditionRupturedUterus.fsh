Profile: ConditionRupturedUterus
Parent: USCoreConditionProblemsHealthConcernsProfile
Id: Condition-ruptured-uterus
Title: "Condition - Ruptured Uterus"
Description: "This Condition profile indicates a maternal morbidity of ruptured uterus."
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2023-04-25T05:55:31.715+00:00"
* ^meta.source = "#PWYoQiePmxilEiCF"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "This Condition profile indicates a maternal morbidity of ruptured uterus."
* code = $sct#34430009
  * ^short = "Rupture of uterus (disorder)"
* subject only Reference(PatientMotherVitalRecords)