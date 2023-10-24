Profile: ObservationAutopsyPerformedIndicatorVitalRecords
Parent: Observation
Id: Observation-autopsy-performed-indicator-vr
Title: "Observation - Autopsy Performed Indicator Vital Records"
Description: "This Observation records if an autopsy was performed, if autopsy findings are available, and the autopsy Performer (US Core Practioner)."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-12-02T03:13:03.132+00:00"
* ^meta.source = "#hfTLHfo9B0DZxsVC"
* ^version = "1.9.0"
* ^date = "2022-08-02T13:21:04+00:00"
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* status MS
* code = $loinc#85699-7
* code MS
* subject 1.. MS
* subject only Reference(PatientVitalRecords)
* performer ..1
  * ^short = "Autopsy Performer using USCorePractioner"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from ValueSetYesNoUnknownVitalRecords (required)
* valueCodeableConcept 1..1
  * ^short = "Autopsy was performed?"
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains autopsyResultsAvailable 0..1
* component[autopsyResultsAvailable] ^short = "Autopsy Results Available"
  * code = $loinc#69436-4
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from ValueSetYesNoUnknownVitalRecords (required)