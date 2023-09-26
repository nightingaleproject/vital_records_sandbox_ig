/*
In VRCL, performer.actor is practitioner or certifier. In MDI, it is a practitioner. In VRDR, it is a certifier; ==> more general would be to create a Vital Records Practitioner modeled on VRDR Certifier, and use it everywhere.

Each profile has different VS bindings for performer.function: VRDR has Certifier Types VS, MDI has ValueSet - Certifier Types, and VRCL has ValueSet - Manner of Death - Vital Records (all include the same codes from snomed)

VRDR does not mark MS for any elements. Marked MS in MDI and VRCL: status, category, code, performer.function, performer.actor
*/
Profile: ProcedureDeathCertificationVitalRecordsNew
Parent: USCoreProcedureProfile
Id: Procedure-death-certification-vr-new
Title: "Procedure - Death Certification Vital Records"
Description: "This Procedure records the certification of death by the certifier. 
This profile is designed to supplant the similar profiles in VRDR and MDI"
* status 
  * ^short = "Status of the death certification"
* category 1..1 
* category = $sct#103693007
* code = $sct#308646001
* code 
* performed[x] only dateTime
  * ^short = "certification Datetime"
  * ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
  * ^type.extension.valueBoolean = true
* performer
  * function 1..1 
  * function from $ValueSet-certifier-types (required) //uses VRCL, need to consolidate valuesets
  * actor only Reference(USCorePractitionerProfile) //generalized to practitioner
  * actor 1..1