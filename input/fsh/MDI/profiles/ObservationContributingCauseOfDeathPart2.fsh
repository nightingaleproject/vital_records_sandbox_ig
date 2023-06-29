Profile: ObservationContributingCauseOfDeathPart2
Parent: Observation
Id: Observation-contributing-cause-of-death-part2
Title: "Observation - Contributing Cause of Death Part 2"
Description: "The Observation - Contributing Cause of Death Part 2 profile is used to identify factors contributing to the cause of death as asserted by the death certifier."
* status MS
* code = $loinc#69441-4
* code MS
* subject 1.. MS
* subject only Reference(USCorePatientProfile)
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer only Reference(USCorePractitionerProfile)
* performer MS
  * ^label = "Investigating coroner or medical examiner"
  * ^short = "Investigating coroner or medical examiner"
* value[x] 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
  * text 1..
    * ^short = "Cause of Death Part 2"
    * ^maxLength = 240