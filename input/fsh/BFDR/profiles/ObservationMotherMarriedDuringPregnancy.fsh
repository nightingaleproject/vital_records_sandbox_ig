Profile: ObservationMotherMarriedDuringPregnancy
Parent: Observation
Id: Observation-mother-married-during-pregnancy
Title: "Observation - Mother Married During Pregnancy"
Description: "This profile represents whether or not the mother was married at conception, at the time of birth, or at any time between conception and giving birth."
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2023-04-25T05:52:30.433+00:00"
* ^meta.source = "#XYbwEeFkLBUh7wya"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
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