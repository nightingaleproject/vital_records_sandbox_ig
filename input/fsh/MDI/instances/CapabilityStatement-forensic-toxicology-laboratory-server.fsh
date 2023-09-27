Instance: CapabilityStatement-forensic-toxicology-laboratory-server
InstanceOf: CapabilityStatement
Title: "CapabilityStatement - Forensic Toxicology Laboratory Server"
Description: "This Section describes the expected capabilities of the Toxicology lab Server actor which is responsible for providing responses to the queries submitted by Toxicology lab Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Toxicology lab Servers are defined. Toxicology lab Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
Usage: #definition
* name = "CapabilityStatementForensicToxicologyLaboratoryServer"
* title = "CapabilityStatement - Forensic Toxicology Laboratory Server"
* status = #active
* experimental = false
* date = "2022-07-03"
* description = "This Section describes the expected capabilities of the Toxicology lab Server actor which is responsible for providing responses to the queries submitted by Toxicology lab Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Toxicology lab Servers are defined. Toxicology lab Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* messaging.supportedMessage
  * mode = #sender
  * definition = Canonical(MessageDefinition-toxicology-system)
  