Profile: ObservationMotherMarriedDuringPregnancy
Parent: Observation
Id: Observation-mother-married-during-pregnancy
Title: "Observation - Mother Married During Pregnancy"
Description: "This profile represents whether or not the mother was married at conception, at the time of birth, or at any time between conception and giving birth."
* code 1..1 MS
* code = $loinc#87301-8
  * ^short = "Mother was married at any time during pregnancy"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords)
* focus 1..1 MS
* focus only Reference(PatientMotherVitalRecords)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_YesNoUnknown_CDC (required)
  * ^short = "Was mother married at conception, at the time of birth, or at any time between conception and giving birth?"
  * ^binding.description = "Yes No Unknown (YNU)"