Profile: ConditionSeizure
Parent: USCoreConditionProblemsHealthConcernsProfile
Id: Condition-seizure
Title: "Condition - Seizure"
Description: "This Condition profile indicates the newborn had an abnormal condition of seizure."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2023-04-25T05:55:36.108+00:00"
* ^meta.source = "#EeZBWd0GoNMlijWz"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "This Condition profile indicates the newborn had an abnormal condition of seizure."
* code = $sct#91175000
  * ^short = "Seizure (finding)"
* subject only Reference(PatientChildVitalRecords)