Profile: ConditionChorioamnionitis
Parent: USCoreConditionProblemsHealthConcernsProfile
Id: Condition-chorioamnionitis
Title: "Condition - Chorioamnionitis"
Description: "This Condition profile indicates a labor and delivery characteristic of chorioamnionitis."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2023-04-25T05:55:12.283+00:00"
* ^meta.source = "#b63NoupeVLKhVBkk"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "This Condition profile indicates a labor and delivery characteristic of chorioamnionitis."
* code = $sct#11612004
  * ^short = "Chorioamnionitis (disorder)"
* subject only Reference(PatientMotherVitalRecords)