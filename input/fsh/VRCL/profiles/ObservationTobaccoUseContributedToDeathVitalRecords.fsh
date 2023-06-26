Profile: ObservationTobaccoUseContributedToDeathVitalRecords
Parent: Observation
Id: Observation-tobacco-use-contributed-to-death-vr
Title: "Observation - Tobacco Use Contributed to Death Vital Records"
Description: "This Observation provides the conclusion arrived at during death investigation regarding the extent to which tobacco use contributed to the death of the decedent."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2022-12-02T03:18:26.064+00:00"
* ^meta.source = "#sunPzVAhPOi9CUHk"
* ^version = "1.0"
* ^date = "2022-08-25"
* id 0..1
* status 1..1 MS
* status only code
* code = $loinc#69443-0
* code MS
  * ^short = "Did tobacco use contribute to death"
* subject 1..1 MS
* subject only Reference(USCorePatientProfile or Decedent)
  * ^short = "subject"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $ValueSet-contributory-tobacco-use (required)
  * ^binding.description = "A set of codes that reflect the extent to which tobacco use contributed to the person's death."