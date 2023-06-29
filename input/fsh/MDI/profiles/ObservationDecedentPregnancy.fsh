Profile: ObservationDecedentPregnancy
Parent: Observation
Id: Observation-decedent-pregnancy
Title: "Observation - Decedent Pregnancy"
Description: """This Observation provides an indication of the pregnancy status of the decedent.
The MDI Observation - Decedent Pregnancy artifact overlaps with the VRDR Decedent Pregnancy Status artifact."""
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2022-08-25T21:17:45.435+00:00"
* ^meta.source = "#JWu3RdUPK1IBP1pj"
* ^version = "1.0"
* ^experimental = false
* ^date = "2022-08-25"
* ^publisher = "Health Level Seven"
* status 1..1 MS
* status only code
  * ^short = "status"
* code 1..1 MS
* code only CodeableConcept
* code = $loinc#69442-2
  * ^short = "Timing of recent pregnancy in relation to death"
* subject 1..1 MS
* subject only Reference(USCorePatientProfile)
  * ^short = "subject"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from ValueSetDeathPregnancyStatus (required)
  * ^short = "Whether the decedent was pregnant at or around the time of death."
  * ^binding.description = "A set of codes that reflect whether the decedent was pregnant at or around the time of death."