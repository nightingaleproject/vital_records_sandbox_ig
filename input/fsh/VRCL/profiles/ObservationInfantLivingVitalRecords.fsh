Profile: ObservationInfantLivingVitalRecords
Parent: Observation
Id: Observation-infant-living-vr
Title: "Observation - Infant Living Vital Records"
Description: "An indication of whether the infant is living at the time the report is being submitted."
* code = $loinc#73757-7
* subject 1..
* subject only Reference(PatientChildVitalRecords)
* value[x] 1..
* value[x] only boolean