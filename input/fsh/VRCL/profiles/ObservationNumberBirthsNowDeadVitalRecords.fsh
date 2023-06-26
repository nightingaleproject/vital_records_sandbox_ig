Profile: ObservationNumberBirthsNowDeadVitalRecords
Parent: Observation
Id: Observation-number-births-now-dead-vr
Title: "Observation - Number of Births Now Dead Vital Records"
Description: "The total number of previous live-born infants for the mother now dead."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:53:22.502+00:00"
* ^meta.source = "#NCSPoSZCzvmXQd1z"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#68496-9
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer