Profile: ObservationDecedentPregnancyVitalRecordsNew
Parent: Observation
Id: Observation-decedent-pregnancy-vr-new
Title: "Observation - Decedent Pregnancy Vital Records"
Description: "This Observation provides an indication of the pregnancy status of the decedent.
This profile is designed to supplant the similar profiles in VRDR and MDI"
* status 1..1 //in vrdr, status is fixed to final
* status only code
  * ^short = "status"
* code 1..1 
* code only CodeableConcept
* code = $loinc#69442-2
  * ^short = "Timing of recent pregnancy in relation to death"
* subject 1..1 
* subject only Reference(USCorePatientProfile) //generalized to Patient
  * ^short = "subject"
* value[x] 1..1 
* value[x] only CodeableConcept
* value[x] from ValueSetDeathPregnancyStatusVitalRecords (required) //need to consolidate on right valueset. this references the vrcl valueset. MDI and VRCL valuesets are missing value 7 (included in VRDR)
  * ^short = "Whether the decedent was pregnant at or around the time of death."
  * ^binding.description = "A set of codes that reflect whether the decedent was pregnant at or around the time of death."
* value[x].extension contains
    BypassEditFlag named bypassEditFlag 0..1 //MDI was missing bypassEditFlag
* value[x].extension[bypassEditFlag].value[x] from EditBypass012VS (required) //vrdr valueset
* value[x].extension[bypassEditFlag].value[x] only CodeableConcept