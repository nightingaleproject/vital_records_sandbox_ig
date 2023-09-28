//content from ObservationMotherDeliveryVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationMotherDeliveryWeightNew
Parent: USCoreVitalSignsProfile
Title: "Observation - Mother Delivery Weight Vital Records"
Description: "The weight of the mother at the time of birth/delivery. Migrated from VRCL."
* code = $loinc#69461-2
* subject 1..
* subject only Reference(PatientMotherVitalRecordsNew)
* value[x] 1..
* value[x] only Quantity
* category
  * text = "Vital Signs"
* code = $loinc#69461-2 "Mother's body weight --at delivery"