//content from ObservationBirthWeightVitalRecords moving from VRCL to BFDR. Changed to reference PatientChild and PatientDecedentFetus profiles in BFDR.
Profile: ObservationBirthWeightNew
Parent: USCoreVitalSignsProfile
Id: Observation-birth-weight-new
Title: "Observation - Birth Weight"
Description: "The weight of the infant/fetus at birth/delivery. Migrated from VRCL."
* code = $loinc#8339-4
* category[VSCat] = $observation-category#vital-signs
* subject 1..
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* value[x] 1..
* value[x] only Quantity