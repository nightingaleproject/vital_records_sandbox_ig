Profile: ObservationInfantLivingVitalRecords
Parent: Observation
Id: Observation-infant-living-vr
Title: "Observation - Infant Living Vital Records"
Description: "An indication of whether the infant is living at the time the report is being submitted."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:52:46.359+00:00"
* ^meta.source = "#cDTfMoVNGL055Vhb"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#73757-7
* subject 1..
* subject only Reference(PatientChildVitalRecords)
* value[x] 1..
* value[x] only boolean