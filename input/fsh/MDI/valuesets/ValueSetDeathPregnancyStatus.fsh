ValueSet: ValueSetDeathPregnancyStatus
Id: ValueSet-death-pregnancy-status
Title: "ValueSet - Death Pregnancy Status"
Description: """A set of codes that reflect whether the decedent was pregnant at or around the time of death. Based on [Pregnancy Status (NCHS)[2.16.840.1.114222.4.11.6003]](https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.6003).
The MDI ValueSet - Death Pregnancy Status artifact overlaps with the VRDR Pregnancy Status artifact."""
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-14T19:11:29.431+00:00"
* ^meta.source = "#vwwydIn8L0VBVw9p"
* ^version = "1.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-03-02T07:45:13+00:00"
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* CodeSystemDeathPregnancyStatus#1 "Not pregnant within past year"
* CodeSystemDeathPregnancyStatus#2 "Pregnant at time of death"
* CodeSystemDeathPregnancyStatus#3 "Not pregnant, but pregnant within 42 days of death"
* CodeSystemDeathPregnancyStatus#4 "Not pregnant, but pregnant 43 days to 1 year before death"
* CodeSystemDeathPregnancyStatus#9 "Unknown if pregnant within the past year"
* $v3-NullFlavor#NA "Not applicable"