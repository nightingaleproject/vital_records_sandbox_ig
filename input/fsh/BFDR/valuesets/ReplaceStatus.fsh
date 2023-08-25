// Replacement Status is deprecated as an extension in BFDR (now a flag in message header)

Alias: $CodeSystem-replacement-status = http://hl7.org/fhir/us/bfdr/CodeSystem/CodeSystem-replacement-status

ValueSet: ValueSetReplacementStatus
Id: ValueSet-replacement-status
Title: "ValueSet - Replacement Status"
Description: "This ValueSet contains codes that represent the replacement status of a record submission."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-06-21T23:24:24.587Z"
* ^url = "http://hl7.org/fhir/us/bfdr/ValueSet/ValueSet-replacement-status"
* ^version = "1.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* $CodeSystem-replacement-status#original "original record"
* $CodeSystem-replacement-status#updated "updated record"
* $CodeSystem-replacement-status#updated_notforNCHS "updated record not for nchs"