Profile: RelatedPersonMotherVitalRecords
Parent: RelatedPersonParentVitalRecords
Id: RelatedPerson-mother-vr
Title: "RelatedPerson - Mother Vital Records"
Description: "The mother of the report subject. Different individuals may play different roles as the mother (e.g., biological mother, adoptive mother, etc.)."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2022-10-12T22:19:06.458+00:00"
* ^meta.source = "#AdndpnVEg113m8jv"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* relationship from ValueSetMotherRelationshipVitalRecords (required)
  * ^short = "Relationships describing the mother's role relative to the subject."
  * ^binding.description = "MotherRelationship"
* gender MS
* communication MS