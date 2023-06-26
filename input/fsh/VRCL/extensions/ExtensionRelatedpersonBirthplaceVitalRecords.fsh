Extension: ExtensionRelatedpersonBirthplaceVitalRecords
Id: Extension-relatedperson-birthplace-vr
Title: "Extension - RelatedPerson Birth Place Vital Records"
Description: "The registered place of birth for the related person. A system may use the address.text if it doesn't store the birthPlace address in discrete elements."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-12T22:12:55.159+00:00"
* ^meta.source = "#LgXTVatRmIuG0iQF"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* value[x] only Address
  * ^short = "The registered place of birth of the related person."
* valueAddress 0..1
  * ^short = "The registered place of birth of the related person."