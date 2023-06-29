Profile: ObservationCauseOfDeathPart1
Parent: Observation
Id: Observation-cause-of-death-part1
Title: "Observation - Cause of Death Part 1"
Description: """The Observation - Cause of Death Part 1 profile reflects the ordered causes of death asserted by the death certifier. The cause of death is initially specified with text.
The MDI Observation - Cause of Death Part 1 artifact overlaps with the VRDR Cause Of Death Part 1 artifact."""
* code = $loinc#69453-9
* code MS
  * ^label = "Cause of death [US Standard Certificate of Death]"
  * ^short = "Cause of death [US Standard Certificate of Death]"
* subject 1.. MS
* subject only Reference(USCorePatientProfile)
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer 1..1 MS
* performer only Reference(USCorePractitionerProfile)
  * ^label = "Cause of death certifier (coroner or medical examiner)"
  * ^short = "Cause of death certifier (coroner or medical examiner)"
* value[x] 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
  * text 1..
    * ^short = "Cause of Death Part 1, Line a,b,c,d"
    * ^maxLength = 120
* component 1..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    lineNumber 1..1 MS and
    interval 1..1 MS
* component[lineNumber] ^short = "lineNumber"
  * code = CodeSystemLocalComponentCodes#lineNumber
  * code MS
  * value[x] 1.. MS
  * value[x] only integer
  * valueInteger 1..1
    * ^short = "lineNumber"
* component[interval] ^short = "Cause of Death Part 1 Interval, Line a,b,c,d"
  * code = $loinc#69440-6
  * code MS
    * ^short = "Disease onset to death interval"
  * value[x] 1.. MS
  * value[x] only string
  * valueString 1..1
    * ^short = "Interval"
    * ^maxLength = 20