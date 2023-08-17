//content from ObservationNumberOtherPregnancyOutcomesVitalRecords moving from VRCL to BFDR. Changed to reference PatientMother profile in BFDR.
Profile: ObservationNumberOtherPregnancyOutcomesNew
Parent: Observation
Id: Observation-number-other-pregnancy-outcomes-new
Title: "Observation - Number of Other Pregnancy Outcomes"
Description: "The total number of other pregnancy outcomes for the mother that did not result in a live birth  (included pregnancy losses of any gestational age, e.g., spontaneous or induced losses or ectopic pregnancies). Migrated from VRCL."
* code = $loinc#69043-8
* subject 1..
* subject only Reference(PatientMotherNew)
* value[x] 1..
* value[x] only integer