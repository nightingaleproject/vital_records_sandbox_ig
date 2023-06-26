Profile: ObservationApgarScoreVitalRecords
Parent: Observation
Id: Observation-apgar-score-vr
Title: "Observation - APGAR Score Vital Records"
Description: "APGAR score post-birth."
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2022-10-13T01:51:06.695+00:00"
* ^meta.source = "#iDVYL4PxvgGqUBZ4"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code from ValueSetApgarTimingVitalRecords (required)
  * ^short = "Standard timings for APGAR assessments. Birth certificates only require 5 and 10 minute timings. Other use cases may require/accept other timings."
  * ^binding.description = "ApgarTiming"
* subject 1..
* subject only Reference(PatientChildVitalRecords)
* value[x] 1..
* value[x] only integer