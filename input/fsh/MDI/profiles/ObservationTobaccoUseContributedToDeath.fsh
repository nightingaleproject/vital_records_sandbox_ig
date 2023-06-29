Profile: ObservationTobaccoUseContributedToDeath
Parent: Observation
Id: Observation-tobacco-use-contributed-to-death
Title: "Observation - Tobacco Use Contributed to Death"
Description: """This Observation provides the conclusion arrived at during death investigation regarding the extent to which tobacco use contributed to the death of the decedent.
The MDI Observation - Tobacco Use Contributed to Death artifact overlaps with the VRDR Tobacco Use Contributed To Death artifact."""
* id 0..1
* status 1..1 MS
* status only code
* code = $loinc#69443-0 "Did tobacco use contribute to death"
* code MS
  * ^short = "Did tobacco use contribute to death?"
* subject 1..1 MS
* subject only Reference(USCorePatientProfile)
  * ^short = "subject"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from ValueSetContributoryTobaccoUse (required)
  * ^binding.description = "A set of codes that reflect the extent to which tobacco use contributed to the person's death."