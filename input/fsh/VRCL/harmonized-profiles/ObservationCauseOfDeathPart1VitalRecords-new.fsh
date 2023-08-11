/*
Subject in VRDR is Decedent.  In MDI and BFDR is Patient.  Patient is better ==> more general would be to create a Vital Records Patient or Vital Records Decedent and use it almost everywhere. VRCL uses either.

Performer in VRDR is certifier. US Core Practitioner in MDI; either in VRCL. Performer cardinality is 0..* for VRDR and VRCL, 1..1 for MDI.

component:interval has cardinality 0..1 in VRDR, 1..1 in MDI and VRCL.
*/
Profile: ObservationCauseOfDeathPart1VitalRecordsNew
Parent: Observation
Id: Observation-cause-of-death-part1-vr-new
Title: "Cause Of Death Part 1"
// Description: "Cause of death Part 1 (Observation). Cause of death prior to submission of the completed death report.  Line number can be 1-4."
Description: "The Observation - Cause of Death Part 1 profile reflects the ordered causes of death asserted by the death certifier. The cause of death is initially specified with text. Line number can be 1-4 "
// * insert RequireMetaProfile(Profile: CauseOfDeathPart1)
* code = $loinc#69453-9 // "Cause of death [US Standard Certificate of Death]"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1 // COD1X
* valueCodeableConcept.text ^short = "Cause of Death Part 1, Line a,b,c,d"
* valueCodeableConcept.text ^maxLength = 120
* subject 1..1
* subject only Reference(USCorePatientProfile)
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer ^short = "Certifier"
* performer only Reference(USCorePractitioner)
  * ^label = "Cause of death certifier (coroner or medical examiner)"
  * ^short = "Cause of death certifier (coroner or medical examiner)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    lineNumber 1..1 and
    interval 0..1   // no point in having a Part1 COD without the cause (value), but possible to have one with no interval
* component[interval].code 1..1
* component[interval].code = $loinc#69440-6 // "Disease onset to death interval"
* component[interval].value[x] 1..1
* component[interval].value[x] only string
* component[interval] ^short = "Cause of Death Part 1 Interval, Line a,b,c,d"
* component[interval].valueString ^short = "Interval"
* component[interval].valueString ^maxLength = 20
* component[lineNumber].code 1..1
* component[lineNumber].code = ComponentCS#lineNumber
* component[lineNumber].value[x] 1..1
* component[lineNumber].value[x] only integer
* component[lineNumber] ^short = "lineNumber"
* component[lineNumber].valueInteger ^short = "lineNumber"
