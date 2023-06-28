Instance: Inline-Instance-for-bundle-mdi-to-edrs-a-freeman-10
InstanceOf: ObservationDeathDate
Usage: #inline
* id = "observation-death-date-a-freeman"
* meta
  * versionId = "6"
  * lastUpdated = "2022-08-14T21:13:53.809+00:00"
  * source = "#kKOivSEMy8TzRUZt"
* status = #final
* code = $loinc#81956-5 "Date+time of death"
* subject.reference = "Patient/us-core-patient-a-freeman"
* effectiveDateTime = "2022-01-08T15:30:00-05:00"
* performer.reference = "Practitioner/us-core-practitioner-s-jones"
* valueDateTime.extension
  * extension[0]
    * url = "http://hl7.org/fhir/us/mdi/StructureDefinition/Extension-date-day"
    * valueUnsignedInt = 8
  * extension[+]
    * url = "http://hl7.org/fhir/us/mdi/StructureDefinition/Extension-date-year"
    * valueUnsignedInt = 2022
  * extension[+]
    * url = "http://hl7.org/fhir/us/mdi/StructureDefinition/Extension-date-month"
    * valueUnsignedInt = 1
  * extension[+]
    * url = "http://hl7.org/fhir/us/mdi/StructureDefinition/Extension-date-time"
    * valueTime.extension
      * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
      * valueCode = #unknown
  * url = "http://hl7.org/fhir/us/mdi/StructureDefinition/Extension-partial-date-time"
* method = CodeSystemMDI#approximate "Approximate"
* component[0]
  * code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
  * valueDateTime = "2022-01-08T15:30:00-05:00"
* component[+]
  * code = $loinc#58332-8
  * valueCodeableConcept = $sct#63238001 "Dead on arrival at hospital"