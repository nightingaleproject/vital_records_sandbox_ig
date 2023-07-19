/*Subject: In VRDR, is Decedent. In MDI, is Patient --> Generalized to USCorePatient
Performer: In VRDR, is Certifier. In MDI, is Practitioner --> Generalized to USCorePractitioner, and loosened cardinality restriction 
Value[x] uses VRCL ValueSet
*/
Profile: ObservationMannerOfDeathVitalRecordsNew
Parent: Observation
Id: Observation-manner-of-death-vr-new
Title: "Observation - Manner of Death Vital Records"
Description: "This Observation provides the conclusion arrived at upon completion of death investigation regarding the manner of death (e.g., natural, homicide, suicide, accident).
This profile is designed to supplant the similar profiles in VRDR and MDI"
* status 
  * ^short = "Status of the manner of death determination"
* code = $loinc#69449-7
  * ^short = "Manner of death"
* subject 1..1 
* subject only Reference(USCorePatientProfile) //generalized to Patient
  * ^label = "The decedent"
  * ^short = "The decedent"
//* performer 1..1 loosen this restriction since VRDR doesn't require a performer
* performer only Reference(USCorePractitionerProfile) //generalized to Practitioner
  * ^label = "Manner of death certifier"
  * ^short = "Manner of death certifier"
  * ^definition = "Manner of death certifier"
* value[x] 1..1 
* value[x] only CodeableConcept
* value[x] from $ValueSet-manner-of-death (required) //should consolidate, this uses VRCL valueset
  * ^label = "Manner of Death value set"
  * ^short = "Manner of Death value set"
  * ^binding.description = "A set of codes to reflect the manner that a person died."