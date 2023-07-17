Profile: RelatedPersonParentVitalRecordsNew
Parent: RelatedPerson
Id: RelatedPerson-parent-vr-new
Title: "Related Person - Parent Vital Records"
Description: "The RelatedPerson profile contains constraints common to the Mother and Father profiles. Serves as resource profile for RelatedPersonMother and RelatedPersonFather. 
This profile is designed to supplant the similar profile in VRDR"
* extension contains
    ExtensionRelatedPersonDeceasedVitalRecords named deceased 0..1 MS and
    ExtensionRelatedpersonBirthplaceVitalRecords named birthPlace 0..1 MS and
    USCoreRaceExtension named race 1..1 and
    USCoreEthnicityExtension named ethnicity 1..1 
* extension[race] ^short = "If race is unknown, use UNK from the bound value set."
* extension[ethnicity] ^short = "If ethnicity is unknown omit both coded data fields."
* identifier MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.description = "Slice based on ID type"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
* identifier contains SSN 0..1 MS
* identifier[SSN] ^short = "SSN if available and appropriate to send"
  * type 1..1 
  * type = $v2-0203#SS
* patient only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
//* patient MS - meaningless
* relationship 1.. MS
* name 1.. MS
* telecom MS
* birthDate MS
  * extension contains ExtensionDatePartAbsentReasonVitalRecords named datePartAbsentReason 0..* MS
  * extension[datePartAbsentReason] ^short = "Indicates reason for missing birthDate data."
    * ^definition = "Indicates reason for missing data on either the birthDate or the birthTime."
* address MS