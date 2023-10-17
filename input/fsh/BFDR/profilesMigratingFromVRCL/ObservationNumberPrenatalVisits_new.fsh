//content from ObservationNumberPrenatalVisitsVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationNumberPrenatalVisitsNew
Parent: Observation
Id: Observation-number-prenatal-visits
Title: "Observation - Number of Prenatal Visits"
Description: "The total number of prenatal visits for the mother. The dates of the first and last prenatal visit are indicated by the effective date range. If the mother received no prenatal care, the value should indicate 0 visits. Migrated from VRCL."
* code = $loinc#68493-6
* code MS
* subject 1.. MS
* subject only Reference(PatientMotherVitalRecordsNew)
* effective[x] only dateTime
// updated to accommodate effective date time inserted everywhere instances
// * effective[x] only Period
* effective[x] MS
* value[x] 1.. MS
* value[x] only integer