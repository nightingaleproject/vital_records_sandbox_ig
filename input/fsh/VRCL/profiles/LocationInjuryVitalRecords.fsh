Profile: LocationInjuryVitalRecords
Parent: USCoreLocation
Id: Location-injury-vr
Title: "Location - Injury Vital Records"
Description: "This Location records the location of an injury. It is based on US Core Location and further constrains the type element to indicate that this is the location of an injury."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2022-12-09T03:35:09.632+00:00"
* ^meta.source = "#Xzt2uTWLxgj3QXul"
* ^experimental = false
* ^date = "2022-04-20"
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* type 1..1 MS
* type = CodeSystemMDI#injury
  * ^short = "Injury location"
* address.text MS
* position ^label = "Location of injury lat/long"
  * ^short = "Location of injury lat/long"
  * ^definition = "Location of injury lat/long"