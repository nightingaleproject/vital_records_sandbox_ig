Instance: CapabilityStatement-medical-examiner-coroner-server
InstanceOf: CapabilityStatement
Title: "CapabilityStatement - Medical Examiner/Coroner Server"
Description: "This Section describes the expected capabilities of the Coroner/Medical Examiner (C/ME) case management system Server actor which is responsible for providing responses to the queries submitted by the C/ME Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by C/ME Servers are defined. C/ME Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
Usage: #definition
* meta
  * versionId = "5"
  * lastUpdated = "2022-09-29T19:53:32.933+00:00"
  * source = "#kfysAOG5gpt7mI6G"
* url = "http://hl7.org/fhir/us/mdi/CapabilityStatement/CapabilityStatement-medical-examiner-coroner-server"
* version = "1.0.0"
* name = "CapabilityStatementMedicalExaminerCoronerServer"
* title = "CapabilityStatement - Medical Examiner/Coroner Server"
* status = #active
* experimental = false
* date = "2022-07-03"
* description = "This Section describes the expected capabilities of the Coroner/Medical Examiner (C/ME) case management system Server actor which is responsible for providing responses to the queries submitted by the C/ME Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by C/ME Servers are defined. C/ME Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* messaging.supportedMessage
  * mode = #receiver
  * definition = "http://hl7.org/fhir/us/mdi/MessageDefinition/MessageDefinition-toxicology-system"
* document[0]
  * mode = #producer
  * profile = "https://fhir.org/fhir/us/mdi/StructureDefinition/Composition-mdi-to-edrs"
* document[+]
  * mode = #consumer
  * profile = "https://fhir.org/fhir/us/mdi/StructureDefinition/Composition-mdi-to-edrs"