/*Performer: In MDI, is Practitioner. In VRDR, is certifier. --> generalized to USCorePractitioner
Using VRCL valueset for certifier types. 
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