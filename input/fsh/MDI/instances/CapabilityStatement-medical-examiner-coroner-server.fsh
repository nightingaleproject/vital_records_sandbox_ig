Instance: CapabilityStatement-medical-examiner-coroner-server
InstanceOf: CapabilityStatement
Title: "CapabilityStatement - Medical Examiner/Coroner Server"
Description: "This Section describes the expected capabilities of the Coroner/Medical Examiner (C/ME) case management system Server actor which is responsible for providing responses to the queries submitted by the C/ME Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by C/ME Servers are defined. C/ME Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
Usage: #definition
* name = "CapabilityStatementMedicalExaminerCoronerServer"
* title = "CapabilityStatement - Medical Examiner/Coroner Server"
* status = #active
* experimental = false
* description = "This Section describes the expected capabilities of the Coroner/Medical Examiner (C/ME) case management system Server actor which is responsible for providing responses to the queries submitted by the C/ME Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by C/ME Servers are defined. C/ME Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* kind = #requirements
* fhirVersion = #4.0.1
* date = "2022-07-03"
* format[0] = #xml
* format[+] = #json
* messaging.supportedMessage
  * mode = #receiver
  * definition = Canonical(MessageDefinition-toxicology-system) 
* document[0]
  * mode = #producer
  * profile = Canonical(CompositionMDIToEDRS)
* document[+]
  * mode = #consumer
  * profile = Canonical(CompositionMDIToEDRS)