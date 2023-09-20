//content from ObservationLastMenstrualPeriodVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationLastMenstrualPeriodNew
Parent: Observation
Title: "Observation - Last Menstrual Period"
Description: "This profile represents the date of the last menstrual period of the patient. The first day of last menstrual period should be captured. The effectiveTime captures the observation date. Migrated from VRCL."
* code = $loinc#8665-2
* code MS
  * ^short = "Last menstrual period start date"
* subject 1.. MS
* subject only Reference(PatientMotherNew)
* effective[x] only dateTime
* effective[x] MS
  * ^short = "Observation date (date on which the observation was reported to the provider)."
  * ^definition = "The date on which the observation was made/reported to the provider for recording in the EHR."
* value[x] 1.. MS
* value[x] only dateTime
  * ^short = "Start of last menstrual period"
  * ^definition = "Start date of last menstrual period."