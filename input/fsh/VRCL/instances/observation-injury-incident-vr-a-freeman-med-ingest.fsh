Instance: observation-injury-incident-vr-a-freeman-med-ingest
InstanceOf: ObservationInjuryIncidentVitalRecords
Title: "Observation - Injury Incident Vital Records - A Freeman, med ingest"
Description: "Example "
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2022-12-08T18:33:04.547+00:00"
  * source = "#S0jKnc4a3638yLHE"
* status = #final
* code = $loinc#11374-6 "Injury incident description Narrative"
* subject.reference = "Patient/us-core-patient-vr-a-freeman"
* effectiveDateTime.extension
  * extension[0]
    * url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-date-day-vr"
    * valueUnsignedInt = 8
  * extension[+]
    * url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-date-year-vr"
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
* performer.reference = "Practitioner/us-core-practitioner-s-jones"
* valueCodeableConcept.text = "drug toxicity"
* component[0]
  * code = $loinc#69444-8
  * valueCodeableConcept = $v2-0136#N "No"
* component[+]
  * code = $loinc#69450-5
  * valueCodeableConcept.text = "Private house"
* component[+]
  * code = $loinc#69451-3
  * valueCodeableConcept = $v3-NullFlavor#NA "not applicable"
    * text = "not applicable"