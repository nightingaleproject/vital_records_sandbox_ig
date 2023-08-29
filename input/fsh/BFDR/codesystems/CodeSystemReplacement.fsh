CodeSystem: CodeSystemReplacement
Id: CodeSystem-replacement-status
Title: "CodeSystem - Replacement Status"
Description: "This CodeSystem contains codes that represent the replacement status of a record submission."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-06-21T23:24:24.183Z"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^caseSensitive = false
* ^content = #complete
* ^count = 3
* #original "original record"
* #updated "updated record"
* #updated_notforNCHS "updated record not for nchs"