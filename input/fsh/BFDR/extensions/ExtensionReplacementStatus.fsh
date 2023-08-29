Extension: ExtensionReplacementStatus
Id: Extension-replacement-status
Title: "Extension - Replacement Status"
Description: "This Extension profile represents the replacement status of a record."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-06-21T23:24:23.601Z"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from ValueSetReplacementStatus (required)
  * ^short = "Replacement status of a record"