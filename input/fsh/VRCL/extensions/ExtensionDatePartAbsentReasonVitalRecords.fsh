Extension: ExtensionDatePartAbsentReasonVitalRecords
Id: Extension-date-part-absent-reason-vr
Title: "Extension - Date Part Absent Reason Vital Records"
Description: "Provides a reason why an expected date part is missing."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2022-12-01T17:07:29.400+00:00"
* ^meta.source = "#kbpTwFiRiGfuDCus"
* ^version = "1.0.0"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* . 0..*
  * ^short = "unknown | asked | temp | notasked | masked | unsupported | astext | error"
  * ^definition = "Provides a reason why the expected date part is missing."
* extension contains
    date-part 1..1 and
    absent-reason 1..1
* extension[date-part] only Extension
  * ^short = "Date part"
  * ^definition = "Date part for which there is a reason for missing data"
  * url only uri
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from ValueSetDatePartVitalRecords (required)
    * ^short = "Specifies the date part that is missing data"
    * ^binding.description = "ValueSetDatePart"
* extension[absent-reason] only Extension
  * ^short = "Date part absent reason"
  * ^definition = "The reason the specific date part is missing."
  * url only uri
  * value[x] 1..
  * value[x] only code
  * value[x] from http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1 (required)
    * ^label = "Used to specify why the normally expected content of the date-part element is missing."
    * ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
    * ^binding.extension[=].valueString = "DataAbsentReason"
    * ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
    * ^binding.extension[=].valueBoolean = true
    * ^binding.description = "DataAbsentReason"