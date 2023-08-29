Extension: ExtensionEncounterMaternityReference
Id: Extension-encounter-maternity-reference
Title: "Extension - Encounter Maternity Reference"
Description: "This Extension profile is a reference to the maternity encounter."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-06-19T07:38:17.069Z"
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "US Realm"
* ^context.type = #element
* ^context.expression = "Composition.encounter"
* value[x] 0..1
* value[x] only Reference(Encounter_Maternity)