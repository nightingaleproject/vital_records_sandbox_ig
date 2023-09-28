//content from ObservationNumberLiveBirthsThisDeliveryVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationNumberLiveBirthsThisDeliveryNew
Parent: Observation
Title: "Observation - Number of Live Births This Delivery"
Description: "The number of live births in this delivery. Migrated from VRCL."
* code = $loinc#73773-4
* subject 1..
* subject only Reference(PatientMotherVitalRecordsNew)
* value[x] 1..
* value[x] only integer