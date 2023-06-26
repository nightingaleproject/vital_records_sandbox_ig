Profile: ObservationInjuryIncidentVitalRecords
Parent: Observation
Id: Observation-injury-incident-vr
Title: "Observation - Injury Incident Vital Records"
Description: "This Observation provides the certified explanation of how the injury leading to death occurred."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2022-12-02T01:58:38.619+00:00"
* ^meta.source = "#tRadEjmS14JpTRzk"
* ^version = "0.1.0"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "The certified explanation of how the injury leading to death occurred."
  * ^definition = "The certified explanation of how the injury leading to death occurred."
* code = $loinc#11374-6
* code MS
  * ^short = "Injury incident description Narrative"
  * ^definition = "Injury incident description Narrative"
* subject 1.. MS
* subject only Reference(USCorePatientProfile)
  * ^short = "The subject of this observation is the decedent."
  * ^definition = "The subject of this observation is the decedent."
* effective[x] only dateTime
  * ^short = "Date/Time of Injury"
  * extension contains $Extension-partial-date-time named partialDateTime 0..1
* performer ..1 MS
* performer only Reference(USCorePractitionerProfile)
  * ^short = "Certifier of the explanation."
  * ^definition = "Certifier of the explanation."
* value[x] 1.. MS
* value[x] only CodeableConcept
  * text MS
    * ^short = "Description of how injured"
* note MS
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    placeOfInjury 0..1 and
    workInjuryIndicator 0..1 and
    transportationRole 0..1
* component[placeOfInjury] ^short = "Place of injury"
  * code = $loinc#69450-5
  * value[x] 1..
  * valueCodeableConcept 0..1
  * valueCodeableConcept only CodeableConcept
    * text ^short = "Place of Injury - Literal"
* component[workInjuryIndicator] ^short = "Injury at Work?"
  * code = $loinc#69444-8
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from $ValueSet-yes-no-unknown-not-applicable (required)
    * ^short = "Injury at Work?"
* component[transportationRole]
  * code = $loinc#69451-3
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from $ValueSet-transportation-incident-role (required)
    * ^short = "Transportation role of decedent"
  * valueCodeableConcept 1..1
    * text ^short = "Transportation role of decedent, if code = OTH"