Profile: ObservationContributingCauseOfDeathPart2VitalRecords
Parent: Observation
Id: Observation-contributing-cause-of-death-part2-vr
Title: "Observation - Contributing Cause of Death Part 2 Vital Records"
Description: "The Observation - Contributing Cause of Death Part 2 profile is used to identify factors contributing to the cause of death as asserted by the death certifier."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2022-12-02T03:15:20.563+00:00"
* ^meta.source = "#Nq84h8PY34M6ItpE"
* ^version = "0.1.0"
* ^date = "2022-02-27T14:53:00+00:00"
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* status MS
* code = $loinc#69441-4
* code MS
* subject 1.. MS
* subject only Reference(USCorePatientProfile or Decedent)
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer 1..1 MS
* performer only Reference(USCorePractitionerProfile)
  * ^label = "Investigating coroner or medical examiner"
  * ^short = "Investigating coroner or medical examiner"
* value[x] 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
  * text 1..
    * ^short = "Cause of Death Part 2"
    * ^maxLength = 240