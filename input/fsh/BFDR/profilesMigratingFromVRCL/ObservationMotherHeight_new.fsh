//content from ObservationMotherHeightVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationMotherHeightNew
Parent: USCoreVitalSignsProfile
Id: Observation-mother-height
Title: "Observation - Mother Height"
Description: "The height of the mother. Migrated from VRCL."
* code = $loinc#3137-7
  * ^short = "Body height Measured"
* subject 1..
* subject only Reference(PatientMotherVitalRecordsNew)
* value[x] 1..
* value[x] only Quantity