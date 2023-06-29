Profile: ObservationMannerOfDeath
Parent: Observation
Id: Observation-manner-of-death
Title: "Observation - Manner of Death"
Description: """This Observation provides the conclusion arrived at upon completion of death investigation regarding the manner of death (e.g., natural, homicide, suicide, accident).
The MDI Observation - Manner of Death artifact overlaps with the VRDR Manner of Death artifact."""
* ^meta.versionId = "22"
* ^meta.lastUpdated = "2023-04-16T16:29:14.483+00:00"
* ^meta.source = "#DJ8qcyHkaY3QztMD"
* ^version = "1.0"
* ^date = "2022-08-25"
* status 1..1 MS
* status only code
  * ^label = "Status of the manner of death determination"
  * ^short = "Status of the manner of death determination"
* code 1..1 MS
* code only CodeableConcept
* code = $loinc#69449-7
  * ^short = "Manner of death"
* subject 1..1 MS
* subject only Reference(USCorePatientProfile)
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer 1..1 MS
* performer only Reference(USCorePractitionerProfile)
  * ^label = "Manner of death certifier"
  * ^short = "Manner of death certifier"
  * ^definition = "Manner of death certifier"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from ValueSetMannerOfDeath (required)
  * ^label = "Manner of Death value set"
  * ^short = "Manner of Death value set"
  * ^binding.description = "A set of codes to reflect the manner that a person died."