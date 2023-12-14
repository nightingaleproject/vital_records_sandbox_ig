Instance: CapabilityStatement-edrs-server
InstanceOf: CapabilityStatement
Title: "CapabilityStatement - Electronic Death Reporting System (EDRS) Server"
Description: "This resource describes the expected capabilities of the Electronic Death Registration System (EDRS) Server actor, which is responsible for providing responses to the queries submitted by the EDRS Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by EDRS Servers are defined. EDRS Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
Usage: #definition
* fhirVersion = #4.0.1
* name = "CapabilityStatementEDRSServer"
* title = "CapabilityStatement - Electronic Death Reporting System (EDRS) Server"
* status = #active
* experimental = false
* date = "2022-07-03"
* description = "This resource describes the expected capabilities of the Electronic Death Registration System (EDRS) Server actor, which is responsible for providing responses to the queries submitted by the EDRS Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by EDRS Servers are defined. EDRS Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* kind = #requirements
* format[0] = #application/fhir+xml
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #json
* rest[0]
  * mode = #server
  * resource[0]
    * type = #Composition
    * supportedProfile = Canonical(CompositionMDIAndEDRS)
    * interaction[0].code = #search-type
    * interaction[+].code = #read
    * searchParam[0]
      * name = "subject"
      * type = #reference
      * documentation = "Who and/or what the composition is about"
    * searchParam[+]
      * name = "patient"
      * type = #reference
      * documentation = "Who and/or what the composition is about"
    * operation
      * name = "operation-composition-document"
      * definition = "https://hl7.org/fhir/operation-composition-document"
      * documentation = "A server should be capable of generating a bundled document from a composition resource with all the referenced resources and either returns a full document bundle, or returns an error."
//    * fhir_comments = " Composition-mdi-and-edrs "
  * resource[+]
    * type = #Patient
    * supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "_id"
      * type = #token
      * documentation = "The ID of the resource"
    * searchParam[+]
      * name = "birthdate"
      * definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-birthdate"
      * type = #date
      * documentation = "The patient's date of birth"
    * searchParam[+]
      * name = "family"
      * type = #string
      * documentation = "A portion of the family name of the patient"
    * searchParam[+]
      * name = "given"
      * definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-given"
      * type = #string
      * documentation = "A portion of the given name of the patient"
    * searchParam[+]
      * name = "gender"
      * definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-gender"
      * type = #token
      * documentation = "Gender of the patient"
    * searchParam[+]
      * name = "name"
      * definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-name"
      * type = #string
      * documentation = "A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text"
//    * fhir_comments = " US Core Patient "
  * resource[+]
    * type = #Location
    * supportedProfile = Canonical(DeathLocation)
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * searchParam
      * name = "address"
      * type = #string
//    * fhir_comments = " Location-death "
  * resource[+]
    * type = #Observation
    * supportedProfile = Canonical(DeathDate)
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * searchParam
      * name = "date"
      * type = #date
//    * fhir_comments = " Observation-death-date "
* rest[+]
  * mode = #client
  * resource
    * type = #Bundle
    * supportedProfile = Canonical(BundleDocumentMDIAndEDRS)
    * interaction.code = #read
//    * fhir_comments = " Returned Searchset Bundle "
* document[0]
  * mode = #producer
  * profile = Canonical(CompositionMDIAndEDRS)
* document[+]
  * mode = #consumer
  * profile = Canonical(CompositionMDIAndEDRS)