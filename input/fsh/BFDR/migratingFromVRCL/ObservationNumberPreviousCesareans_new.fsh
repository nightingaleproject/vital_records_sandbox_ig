//content from ObservationNumberPreviousCesareansVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationNumberPreviousCesareansNew
Parent: Observation
Id: Observation-number-previous-cesareans-new
Title: "Observation - Number of Previous Cesareans"
Description: "The total number of prior cesarean deliveries for the mother. Migrated from VRCL."
* code = $loinc#68497-7
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer