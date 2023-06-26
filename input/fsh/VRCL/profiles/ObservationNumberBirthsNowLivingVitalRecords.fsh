Profile: ObservationNumberBirthsNowLivingVitalRecords
Parent: Observation
Id: Observation-number-births-now-living-vr
Title: "Observation - Number of Births Now Living Vital Records"
Description: "The total number of previous live-born infants for the mother now living."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:53:30.374+00:00"
* ^meta.source = "#CivTocd5rfjrZSKa"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#11638-4
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer