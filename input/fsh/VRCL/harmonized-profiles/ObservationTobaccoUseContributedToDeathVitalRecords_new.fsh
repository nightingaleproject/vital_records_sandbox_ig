Profile: ObservationTobaccoUseContributedToDeathVitalRecordsNew
Parent: Observation
Id: Observation-tobacco-use-contributed-to-death-vr-new
Title: "Observation - Tobacco Use Contributed to Death Vital Records"
Description: "This Observation provides the conclusion arrived at during death investigation regarding the extent to which tobacco use contributed to the death of the decedent.
This profile is designed to supplant the similar profiles in VRDR and MDI."
* id 0..1
//* status 1..1 
* status only code //VRDR status is fixed to final
* code = $loinc#69443-0
//* code MS
  * ^short = "Did tobacco use contribute to death"
* subject 1..1 
* subject only Reference(USCorePatientProfile) //generalized to Patient
  * ^short = "subject"
* value[x] 1..1 
* value[x] only CodeableConcept
* value[x] from ValueSetContributoryTobaccoUseVitalRecords (required) // need to consolidate on the right valueset.  this references the MDI valueset
  * ^binding.description = "A set of codes that reflect the extent to which tobacco use contributed to the person's death."