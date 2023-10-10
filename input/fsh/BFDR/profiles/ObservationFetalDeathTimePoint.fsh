Profile: ObservationFetalDeathTimePoint
Parent: Observation
Title: "Observation - Fetal Death Time Point"
Description: "This Observation profile represents the estimated time of fetal death; the time of death is characterized by the relationship to the time of delivery."
* code 1..1 MS
* code = $loinc#73811-2
  * ^short = "Estimated timing of fetal death"
* subject 1.. MS
* subject only Reference(PatientDecedentFetusVitalRecordsNew)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_FetalDeathTimePoints_NCHS (required)
  * ^short = "The value set contains a list of items to indicate when the fetus died with respect to labor and assessment."
  * ^binding.description = "Fetal Death Time Points (NCHS)"