Profile: InjuryIncidentNew
Parent: Observation
Id: vrdr-injury-incident-new
Title: "Observation - Injury Incident Vital Records"
Description: "This Observation provides the certified explanation of how the injury leading to death occurred."
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "The certified explanation of how the injury leading to death occurred."
  * ^definition = "The certified explanation of how the injury leading to death occurred."
* code = $loinc#11374-6
* code MS
  * ^short = "Injury incident description Narrative"
  * ^definition = "Injury incident description Narrative"
* subject only Reference(PatientVitalRecordsNew)
  * ^short = "The subject of this observation is the decedent."
  * ^definition = "The subject of this observation is the decedent."
* effective[x] only dateTime
  * ^short = "Date/Time of Injury"
  * extension contains $Extension-partial-date-time named partialDateTime 0..1
* performer only Reference(USCorePractitionerProfile)
  * ^short = "Certifier of the explanation."
  * ^definition = "Certifier of the explanation."
* value[x] only CodeableConcept
  * text 
    * ^short = "Description of how injured"
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    placeOfInjury 0..1 and
    workInjuryIndicator 0..1 and
    transportationRole 0..1
* component[placeOfInjury] ^short = "Place of injury"
  * code = $loinc#69450-5
  * valueCodeableConcept 0..1
  * valueCodeableConcept only CodeableConcept
    * text ^short = "Place of Injury - Literal"
* component[workInjuryIndicator] ^short = "Injury at Work?"
  * code = $loinc#69444-8
  * value[x] only CodeableConcept
  * value[x] from $ValueSet-yes-no-unknown-not-applicable (required)
    * ^short = "Injury at Work?"
* component[transportationRole]
  * code = $loinc#69451-3
  * value[x] only CodeableConcept
  * value[x] from $ValueSet-transportation-incident-role (required)
    * ^short = "Transportation role of decedent"
  * valueCodeableConcept 1..1
    * text ^short = "Transportation role of decedent, if code = OTH"