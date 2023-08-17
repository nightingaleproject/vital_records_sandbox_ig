//content from ObservationInfantLivingVitalRecords moving from VRCL to BFDR. Changed to reference PatientChild profile in BFDR.
Profile: ObservationInfantLivingNew
Parent: Observation
Id: Observation-infant-living-new
Title: "Observation - Infant Living"
Description: "An indication of whether the infant is living at the time the report is being submitted. Migrated from VRCL."
* code = $loinc#73757-7
* subject 1..
* subject only Reference(PatientChildNew)
* value[x] 1..
* value[x] only boolean