Profile: ConditionPerinealLaceration
Parent: USCoreConditionProblemsHealthConcernsProfile
Id: Condition-perineal-laceration
Title: "Condition - Perineal Laceration"
Description: "This Condition profile indicates a maternal morbidity of perineal laceration."
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2023-04-25T05:55:29.397+00:00"
* ^meta.source = "#s4IXNOwxA7HLLhWy"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "This Condition profile indicates a maternal morbidity of perineal laceration."
* code = $sct#398019008
  * ^short = "Perineal laceration during delivery (disorder)"
* subject only Reference(PatientMotherVitalRecords)