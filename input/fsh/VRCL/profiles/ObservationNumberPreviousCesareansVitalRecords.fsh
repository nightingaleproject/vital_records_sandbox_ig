Profile: ObservationNumberPreviousCesareansVitalRecords
Parent: Observation
Id: Observation-number-previous-cesareans-vr
Title: "Observation - Number of Previous Cesareans Vital Records"
Description: "The total number of prior cesarean deliveries for the mother."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:54:49.974+00:00"
* ^meta.source = "#9hZDqIz0hGOWo1N3"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#68497-7
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer