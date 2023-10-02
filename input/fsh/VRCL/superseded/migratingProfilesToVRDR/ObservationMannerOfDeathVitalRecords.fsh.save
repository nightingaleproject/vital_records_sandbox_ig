Profile: ObservationMannerOfDeathVitalRecords
Parent: Observation
Id: Observation-manner-of-death-vr
Title: "Observation - Manner of Death Vital Records"
Description: "This Observation provides the conclusion arrived at upon completion of death investigation regarding the manner of death (e.g., natural, homicide, suicide, accident)."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2022-12-02T03:17:12.606+00:00"
* ^meta.source = "#dshyUpNGSgBuy5xY"
* ^version = "1.0"
* ^date = "2022-08-25"
* id 0..1
  * ^short = "id"
* status 1..1 MS
* status only code
  * ^label = "Status of the manner of death determination"
  * ^short = "Status of the manner of death determination"
* code 1..1 MS
* code only CodeableConcept
* code = $loinc#69449-7
  * ^short = "Manner of death"
* subject 1..1 MS
* subject only Reference(USCorePatientProfile or Decedent)
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer 1..1 MS
* performer only Reference(USCorePractitionerProfile)
  * ^label = "Manner of death certifier"
  * ^short = "Manner of death certifier"
  * ^definition = "Manner of death certifier"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $ValueSet-manner-of-death (required)
  * ^label = "Manner of Death value set"
  * ^short = "Manner of Death value set"
  * ^binding.description = "A set of codes to reflect the manner that a person died."