Extension: ExtensionDateYearVitalRecords
Id: Extension-date-year-vr
Title: "Extension - Date Year Vital Records"
Description: "The year portion (YYYY) of the partial date."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2022-12-01T18:03:19.594+00:00"
* ^meta.source = "#5QDbOnouOlCf1dba"
* ^version = "1.0.0"
* ^date = "2022-07-13T19:21:56+00:00"
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* value[x] 1..
* value[x] only unsignedInt
* valueUnsignedInt 1..1
  * ^maxValueInteger = 9998
  * extension contains $data-absent-reason named dataabsent 0..1