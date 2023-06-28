Profile: ObservationNumberFetalDeathsThisDeliveryVitalRecords
Parent: Observation
Id: Observation-number-fetal-deaths-this-delivery-vr
Title: "Observation - Number of Fetal Deaths This Delivery Vital Records"
Description: "The number of fetal deaths in this delivery."
* code = $loinc#73772-6
  * ^short = "LOINC LCN: Number of fetal deaths delivered"
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer