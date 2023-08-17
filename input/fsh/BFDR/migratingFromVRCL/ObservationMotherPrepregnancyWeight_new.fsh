//content from ObservationMotherPrepregnancyWeightVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationMotherPrepregnancyWeightNew
Parent: USCoreVitalSignsProfile
Id: Observation-mother-prepregnancy-weight-new
Title: "Observation - Mother Prepregnancy Weight"
Description: "The weight of the mother before becoming pregnant. Migrated from VRCL."
* code = $loinc#56077-1
* subject 1..
* subject only Reference(PatientMotherNew)
* value[x] 1..
* value[x] only Quantity