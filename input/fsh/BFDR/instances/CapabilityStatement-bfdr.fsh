Instance: CapabilityStatement-bfdr
InstanceOf: CapabilityStatement
Title: "CapabilityStatement - Birth and Fetal Death"
Description: "This section describes the expected capabilities of a BFDR Document producer actor who is responsible for producing clinical documents and a BFDR Document consumer who receives and consumes the clinical documents."
Usage: #definition
* url = "http://hl7.org/fhir/us/bfdr/CapabilityStatement/CapabilityStatement-bfdr"
* version = "1.0.0"
* name = "CapabilityStatementBFDR"
* title = "CapabilityStatement - Birth and Fetal Death"
* status = #active
* experimental = false
* date = "2020-11-01"
* description = "This section describes the expected capabilities of a BFDR Document producer actor who is responsible for producing clinical documents and a BFDR Document consumer who receives and consumes the clinical documents."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* document[0]
  * mode = #producer
  * profile = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Composition-provider-live-birth-report"
* document[+]
  * mode = #producer
  * profile = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Composition-provider-fetal-death-report"
* document[+]
  * mode = #producer
  * profile = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Composition-jurisdiction-live-birth-report"
* document[+]
  * mode = #producer
  * profile = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Composition-jurisdiction-fetal-death-report"
* document[+]
  * mode = #producer
  * profile = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Composition-coded-cause-of-fetal-death"
* document[+]
  * mode = #producer
  * profile = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Composition-coded-race-and-ethnicity"