Profile: ObservationNumberLiveBirthsThisDeliveryVitalRecords
Parent: Observation
Id: Observation-number-live-births-this-delivery-vr
Title: "Observation - Number of Live Births This Delivery Vital Records"
Description: "The number of live births in this delivery."
* code = $loinc#73773-4
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer