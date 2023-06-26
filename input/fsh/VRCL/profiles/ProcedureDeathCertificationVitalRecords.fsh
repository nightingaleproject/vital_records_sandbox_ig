Profile: ProcedureDeathCertificationVitalRecords
Parent: USCoreProcedureProfile
Id: Procedure-death-certification-vr
Title: "Procedure - Death Certification Vital Records"
Description: "This Procedure records the certification of death by the certifier."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2022-12-02T01:59:23.849+00:00"
* ^meta.source = "#umOh9zhJFaMX0LkY"
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
* category 1.. MS
* category = $sct#103693007
* code = $sct#308646001
* code MS
* performed[x] only dateTime
  * ^short = "certification Datetime"
  * ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
  * ^type.extension.valueBoolean = true
* performer
  * function 1.. MS
  * function from $ValueSet-certifier-types (required)
  * actor only Reference(USCorePractitionerProfile)
  * actor MS