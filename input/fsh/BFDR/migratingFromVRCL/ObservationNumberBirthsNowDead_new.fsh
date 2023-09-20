//content from ObservationNumberBirthsNowDeadVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationNumberBirthsNowDeadNew
Parent: Observation
Title: "Observation - Number of Births Now Dead"
Description: "The total number of previous live-born infants for the mother now dead. Migrated from VRCL."
* code = $loinc#68496-9
* subject 1..
* subject only Reference(PatientMotherNew)
* value[x] 1..
* value[x] only integer