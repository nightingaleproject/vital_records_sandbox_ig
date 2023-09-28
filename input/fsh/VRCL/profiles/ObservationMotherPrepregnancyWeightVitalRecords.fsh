Profile: ObservationMotherPrepregnancyWeightVitalRecords
Parent: USCoreVitalSignsProfile
Id: Observation-mother-prepregnancy-weight-vr
Title: "Observation - Mother Prepregnancy Weight Vital Records"
Description: "The weight of the mother before becoming pregnant."
* code = $loinc#56077-1
* subject 1..
* subject only Reference(PatientMotherVitalRecordsNew)
* value[x] 1..
* value[x] only Quantity