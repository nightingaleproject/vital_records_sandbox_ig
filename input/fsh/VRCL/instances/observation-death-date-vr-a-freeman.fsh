Instance: observation-death-date-vr-a-freeman
InstanceOf: ObservationDeathDateVitalRecords
Title: "Observation - Death Date Vital Records - A Freeman example"
Description: "Example "
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2022-12-08T18:13:43.360+00:00"
  * source = "#NkNsP7wv69yFy3aT"
* status = #final
* code = $loinc#81956-5 "Date+time of death"
* subject.reference = "Patient/us-core-patient-vr-a-freeman"
* effectiveDateTime = "2022-01-08T15:30:00-05:00"
* performer.reference = "Practitioner/us-core-practitioner-vr-s-jones"
* valueDateTime.extension
  * extension[ExtensionDateDayVitalRecords]
    * valueUnsignedInt = 8
  * extension[ExtensionDateYearVitalRecords]
    * valueUnsignedInt = 2022
  * extension[+]
    * url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-date-month-vr"
    * valueUnsignedInt = 1
  * extension[+]
    * url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-date-time-vr"
    * valueTime.extension
      * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
      * valueCode = #unknown
  * url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-time-vr"
* method = CodeSystemMDI#approximate "Approximate"
* component[0]
  * code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
  * valueDateTime = "2022-01-08T15:30:00-05:00"
* component[+]
  * code = $loinc#58332-8
  * valueCodeableConcept = $sct#63238001 "Dead on arrival at hospital"