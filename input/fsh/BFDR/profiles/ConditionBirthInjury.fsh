Profile: ConditionBirthInjury
Parent: USCoreConditionProblemsHealthConcernsProfile
Id: Condition-birth-injury
Title: "Condition - Birth Injury"
Description: "This Condition profile indicates the newborn had an abnormal condition of birth injury."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2023-04-25T05:55:06.416+00:00"
* ^meta.source = "#HNk2HXP9tOSt93MA"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "This Condition profile indicates the newborn had an abnormal condition of birth injury."
* code = $sct#56110009
  * ^short = "Birth trauma of fetus (disorder)"
* subject only Reference(PatientChildVitalRecords)