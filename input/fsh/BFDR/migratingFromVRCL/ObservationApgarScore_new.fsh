//content from ObservationApgarVitalRecords moving from VRCL to BFDR. Changed to reference PatientChild profile in BFDR. Should it reference ValueSetApgarTiming in BFDR instead of VRCL?
Profile: ObservationApgarScoreNew
Parent: Observation
Title: "Observation - APGAR Score"
Description: "APGAR score post-birth. Migrated from VRCL."
* code from ValueSetApgarTimingVitalRecords (required)
  * ^short = "Standard timings for APGAR assessments. Birth certificates only require 5 and 10 minute timings. Other use cases may require/accept other timings."
  * ^binding.description = "ApgarTiming"
* subject 1..
* subject only Reference(PatientChildNew)
* value[x] 1..
* value[x] only integer