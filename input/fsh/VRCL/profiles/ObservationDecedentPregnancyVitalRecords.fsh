Profile: ObservationDecedentPregnancyVitalRecords
Parent: Observation
Id: Observation-decedent-pregnancy-vr
Title: "Observation - Decedent Pregnancy Vital Records"
Description: "This Observation provides an indication of the pregnancy status of the decedent."
* status 1..1 MS
* status only code
  * ^short = "status"
* code 1..1 MS
* code only CodeableConcept
* code = $loinc#69442-2
  * ^short = "Timing of recent pregnancy in relation to death"
* subject 1..1 MS
* subject only Reference(USCorePatientProfile or Decedent)
  * ^short = "subject"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from ValueSetDeathPregnancyStatusVitalRecords (required)
  * ^short = "Whether the decedent was pregnant at or around the time of death."
  * ^binding.description = "A set of codes that reflect whether the decedent was pregnant at or around the time of death."