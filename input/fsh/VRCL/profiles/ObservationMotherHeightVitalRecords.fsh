Profile: ObservationMotherHeightVitalRecords
Parent: USCoreVitalSignsProfile
Id: Observation-mother-height-vr
Title: "Observation - Mother Height Vital Records"
Description: "The height of the mother."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:53:11.503+00:00"
* ^meta.source = "#DmjXMEOAkifcxFg1"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#3137-7
  * ^short = "Body height Measured"
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only Quantity