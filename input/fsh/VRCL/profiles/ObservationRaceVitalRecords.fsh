Profile: ObservationRaceVitalRecords
Parent: Observation
Id: Observation-race-vr
Title: "Observation - Race Vital Records"
Description: "This profile represents a single race code assigned to the person. If the value is unknown, set dataAbsentReason to \"unknown\"."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:56:20.793+00:00"
* ^meta.source = "#2mAXxd8TiPjEqQgU"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#80977-2
  * ^short = "Tabulated race [CDC]"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* focus 1..1
* focus only Reference(PatientMotherVitalRecords or RelatedPersonMotherGestationalVitalRecords or RelatedPersonFatherNaturalVitalRecords)
* value[x] 0..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_Race_NCHS (required)
  * ^label = "To reflect race information."
  * ^short = "Race (NCHS)"
  * ^binding.description = "Race (NCHS)"
* dataAbsentReason MS