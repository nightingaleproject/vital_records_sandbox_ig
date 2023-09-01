


Profile: DecedentNew
Parent: PatientVitalRecordsNew
Id: vrdr-decedent-new
Title: "Decedent"
Description: "Decedent (USCorePatient)"
* insert RequireMetaProfile(Decedent)
* extension contains
    NVSSSexAtDeath named NVSS-SexAtDeath 0..1 and
    SpouseAlive named Spouse-Alive 0..1
* extension[NVSS-SexAtDeath] ^short = "NVSS Sex at Death"
* extension[Spouse-Alive] ^short = "Spouse Alive?"
* extension[birthPlace] ^short = "Decedent birthplace"
* identifier 1..*
* name 1..*
* birthDate ^short = "Date of Birth"
* birthDate.extension contains
    PartialDate named partialDate 0..1
* birthDate.extension[partialDate] ^short = "partialDate"
* birthDate.extension[partialDate] ^definition = "Alternative component representation of date."
* address ^short = "Decedent's Residence"
* maritalStatus only CodeableConcept
* maritalStatus from MaritalStatusVS (required)  // MARITAL
* maritalStatus.text ^short = "Marital Description"
* maritalStatus.extension contains
    BypassEditFlag named bypassEditFlag 0..1 // MARITAL_BYPASS
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept from EditBypass0124VS (required)
* maritalStatus.extension[bypassEditFlag].value[x] only CodeableConcept
* contact ^short = "Informant information"
* contact.relationship 0..1
* contact.relationship ^short = "Informant Relationship (INFORMRELATE)"
* contact.relationship only CodeableConcept
// * contact.relationship from RelatedPersonRelationshipTypeVS (required)
* contact.relationship.text ^short = "Informant Relationship (INFORMRELATE) - first 30 characters will be used"
