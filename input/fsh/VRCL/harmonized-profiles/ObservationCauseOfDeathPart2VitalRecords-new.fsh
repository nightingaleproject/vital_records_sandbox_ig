/*
Subject in VRDR is Decedent.  In MDI and BFDR is Patient.  Patient is better. (Vital Records  Decedent more general?  Or just USCore Patient?)

Performer in VRDR is certifier. US Core Practitioner in MDI; either in VRCL. Performer cardinality is 0..* for VRDR and VRCL, 1..1 for MDI.

VRDR does not mark MS for any elements. Marked MS in MDI and VRCL: status, code, subject, performer, value[x] (slice def)

*/
Profile: ObservationCauseOfDeathPart2VitalRecords-new
Parent: Observation
Id: Observation-cause-of-death-part2-vr-new
Title: "Observation - Contributing Cause of Death Part 2 Vital Records"
Description: "The Observation - Contributing Cause of Death Part 2 profile is used to identify factors contributing to the cause of death as asserted by the death certifier."
//* insert RequireMetaProfile(CauseOfDeathPart2)
* id 0..1
* code 1..1
* code only CodeableConcept
* code = $loinc#69441-4 // "Other significant causes or conditions of death"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1
* valueCodeableConcept.text ^short = "Cause of Death Part 2"
* valueCodeableConcept.text ^maxLength = 240
* subject 1..1
* subject only Reference(Patient)
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer only Reference(USCorePractitionerProfile)
  * ^label = "Certifier, investigating coroner or medical examiner"
  * ^short = "Certifier, investigating coroner or medical examiner"