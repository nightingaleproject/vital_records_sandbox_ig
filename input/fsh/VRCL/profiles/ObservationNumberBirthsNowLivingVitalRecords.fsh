Profile: ObservationNumberBirthsNowLivingVitalRecords
Parent: Observation
Id: Observation-number-births-now-living-vr
Title: "Observation - Number of Births Now Living Vital Records"
Description: "The total number of previous live-born infants for the mother now living."
* code = $loinc#11638-4
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer