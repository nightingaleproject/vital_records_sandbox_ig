//content from ObservationNumberFetalDeathsThisDeliveryVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationNumberFetalDeathsThisDeliveryNew
Parent: Observation
Id: Observation-number-fetal-deaths-this-delivery-new
Title: "Observation - Number of Fetal Deaths This Delivery"
Description: "The number of fetal deaths in this delivery. Migrated from VRCL."
* code = $loinc#73772-6
  * ^short = "LOINC LCN: Number of fetal deaths delivered"
* subject 1..
* subject only Reference(PatientMotherNew)
* value[x] 1..
* value[x] only integer