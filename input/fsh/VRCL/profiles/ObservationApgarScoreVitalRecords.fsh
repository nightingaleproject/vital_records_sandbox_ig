Profile: ObservationApgarScoreVitalRecords
Parent: Observation
Id: Observation-apgar-score-vr
Title: "Observation - APGAR Score Vital Records"
Description: "APGAR score post-birth."
* code from ValueSetApgarTimingVitalRecords (required)
  * ^short = "Standard timings for APGAR assessments. Birth certificates only require 5 and 10 minute timings. Other use cases may require/accept other timings."
  * ^binding.description = "ApgarTiming"
* subject 1..
* subject only Reference(PatientChildVitalRecords)
* value[x] 1..
* value[x] only integer