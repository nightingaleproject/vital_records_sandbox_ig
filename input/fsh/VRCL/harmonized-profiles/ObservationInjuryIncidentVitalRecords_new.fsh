Profile: ObservationInjuryIncidentVitalRecordsNew
Parent: Observation
Id: Observation-injury-incident-vr-new
Title: "Observation - Injury Incident Vital Records"
Description: "This Observation provides the certified explanation of how the injury leading to death occurred.
This profile is designed to supplant the similar profiles in VRDR and MDI"
* . ^short = "The certified explanation of how the injury leading to death occurred."
  * ^definition = "The certified explanation of how the injury leading to death occurred."
//status is final in vrdr
* code = $loinc#11374-6
* code 
  * ^short = "Injury incident description Narrative"
  * ^definition = "Injury incident description Narrative"
* subject 1..1 
* subject only Reference(USCorePatientProfile) //generalized to Patient
  * ^short = "The subject of this observation is the decedent."
  * ^definition = "The subject of this observation is the decedent."
* effective[x] only dateTime
  * ^short = "Date/Time of Injury"
  * extension contains $Extension-partial-date-time named partialDateTime 0..1
//* performer ..1 loosen this restriction bc vrdr doesn't require a performer
* performer only Reference(USCorePractitionerProfile) //generalized to Practitioner
  * ^short = "Certifier of the explanation."
  * ^definition = "Certifier of the explanation."
* value[x] 1..1 
* value[x] only CodeableConcept
  * text 
    * ^short = "Description of how injured"
* note 
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    placeOfInjury 0..1 and
    workInjuryIndicator 0..1 and
    transportationRole 0..1
* component[placeOfInjury] ^short = "Place of injury"
  * code = $loinc#69450-5
  * value[x] 1..1
  * valueCodeableConcept 0..1
  * valueCodeableConcept only CodeableConcept
    * text ^short = "Place of Injury - Literal"
* component[workInjuryIndicator] ^short = "Injury at Work?"
  * code = $loinc#69444-8
  * value[x] 1..1
    * ^short = "Injury at Work?"
  * value[x] only CodeableConcept
  * value[x] from $ValueSet-yes-no-unknown-not-applicable (required) //need to consolidate, this uses the VRCL valueset
* component[transportationRole]
  * code = $loinc#69451-3
  * value[x] 1..1
    * ^short = "Transportation role of decedent"
  * value[x] only CodeableConcept
  * value[x] from $ValueSet-transportation-incident-role (required) //need to consolidate, this uses the VRCL valueset
  * valueCodeableConcept 1..1
    * text ^short = "Transportation role of decedent, if code = OTH"