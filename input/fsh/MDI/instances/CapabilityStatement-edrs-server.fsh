Instance: CapabilityStatement-edrs-server
InstanceOf: CapabilityStatement
Title: "CapabilityStatement - Electronic Death Reporting System (EDRS) Server"
Description: "This Section describes the expected capabilities of the Electronic Death Registration System (EDRS) Server actor which is responsible for providing responses to the queries submitted by the EDRS Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by EDRS Servers are defined. EDRS Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
Usage: #definition
* fhirVersion = #4.0.1
* name = "CapabilityStatementEDRSServer"
* title = "CapabilityStatement - Electronic Death Reporting System (EDRS) Server"
* status = #active
* experimental = false
* date = "2022-07-03"
* description = "This Section describes the expected capabilities of the Electronic Death Registration System (EDRS) Server actor which is responsible for providing responses to the queries submitted by the EDRS Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by EDRS Servers are defined. EDRS Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* kind = #requirements
* format[0] = #xml
* format[+] = #json
* document[0]
  * mode = #producer
  * profile = Canonical(CompositionMDIToEDRSNew)
* document[+]
  * mode = #consumer
  * profile = Canonical(CompositionMDIToEDRSNew)