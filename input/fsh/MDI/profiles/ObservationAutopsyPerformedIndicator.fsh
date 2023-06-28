Profile: ObservationAutopsyPerformedIndicator
Parent: Observation
Id: Observation-autopsy-performed-indicator
Title: "Observation - Autopsy Performed Indicator"
Description: """This Observation records if an autopsy was performed, if autopsy findings are available, and the autopsy Performer (US Core Practioner).
The MDI Observation - Autopsy Performed Indicator artifact overlaps with the VRDR Autopsy Performed Indicator artifact."""
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2022-08-24T16:38:46.078+00:00"
* ^meta.source = "#CYHqB1U0DYCF3jzg"
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
* subject only Reference(USCorePatientProfile)
* performer ..1
  * ^short = "Autopsy Performer using USCorePractioner"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from ValueSetYesNoUnknown (required)
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
  * value[x] from ValueSetYesNoUnknownNotApplicable (required)