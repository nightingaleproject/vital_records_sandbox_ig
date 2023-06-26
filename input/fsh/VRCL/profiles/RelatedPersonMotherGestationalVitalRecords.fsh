Profile: RelatedPersonMotherGestationalVitalRecords
Parent: RelatedPersonMotherVitalRecords
Id: RelatedPerson-mother-gestational-vr
Title: "RelatedPerson - Mother Gestational Vital Records"
Description: "The woman who gave birth to or delivered the infant. The RelatedPerson structure is required in order to link the mother to the newborn or fetus."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-12T22:13:35.979+00:00"
* ^meta.source = "#OT7hVyhDqVWMriuN"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "The woman who gave birth to or delivered the infant. The RelatedPerson structure is required in order to link the mother to the newborn or fetus."
* relationship 1..1
* relationship = $v3-RoleCode#GESTM
  * ^short = "gestational mother"
  * ^definition = "The player of the role is a female whose womb carries the fetus of the scoping entity (child)."