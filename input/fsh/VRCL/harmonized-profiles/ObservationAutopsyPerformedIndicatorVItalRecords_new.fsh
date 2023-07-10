Profile: ObservationAutopsyPerformedIndicatorVitalRecordsNew
Parent: Observation
Id: Observation-autopsy-performed-indicator-vital-records-new
Title: "Observation - Autopsy Performed Indicator - Vital Records"
Description: """This Observation records if an autopsy was performed, if autopsy findings are available, and the autopsy Performer (US Core Practioner).
This profile is designed to supplant the similar profiles in VRDR and MDI, but not BFDR.  BFDR has three data elements relating to histological exam
and fetal autospy, and whether either was used to establish cause of death.   MORE WORK NEEDED to resolve this."""
// * status MS -- meaningless since status is 1..1
* code = $loinc#85699-7
* subject 1..1
* subject only Reference(USCorePatientProfile) // generalized to Patient
// * performer ..1 - loosen this restriction because VRDR does not require a performer... Should this be MS?
* performer only Reference(USCorePractitioner)
  * ^short = "Autopsy Performer using USCorePractioner"
* value[x] 1..1
  * ^short = "Autopsy was performed?"
* value[x] only CodeableConcept
* value[x] from YesNoUnknownVS (required) // need to consolidate on the right valueset.  this references the VRDR valueset
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains autopsyResultsAvailable 0..1
* component[autopsyResultsAvailable] ^short = "Autopsy Results Available"
  * code = $loinc#69436-4
  * value[x] 1..1
  * value[x] only CodeableConcept
  * valueCodeableConcept from ValueSetYesNoUnknownNotApplicable (required)