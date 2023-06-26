Profile: ObservationFetalDeathTimePoint
Parent: Observation
Id: Observation-estimated-fetal-death-time-point
Title: "Observation - Fetal Death Time Point"
Description: "This Observation profile represents the estimated time of fetal death; the time of death is characterized by the relationship to the time of delivery."
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2023-04-25T05:51:21.899+00:00"
* ^meta.source = "#AOkwMPRuAzGigBz4"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#73811-2
  * ^short = "Estimated timing of fetal death"
* subject 1.. MS
* subject only Reference(PatientDecedentFetusVitalRecords)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_FetalDeathTimePoints_NCHS (required)
  * ^short = "The value set contains a list of items to indicate when the fetus died with respect to labor and assessment."
  * ^binding.description = "Fetal Death Time Points (NCHS)"