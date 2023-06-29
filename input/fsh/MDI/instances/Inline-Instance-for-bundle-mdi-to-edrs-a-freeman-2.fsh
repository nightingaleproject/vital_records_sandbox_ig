Instance: Inline-Instance-for-bundle-mdi-to-edrs-a-freeman-2
InstanceOf: ObservationHowDeathInjuryOccurred
Usage: #inline
* id = "observation-how-death-injury-occurred-a-freeman-med-ingest"
* meta
  * versionId = "8"
  * lastUpdated = "2022-08-15T20:52:05.129+00:00"
  * source = "#amRl9AqJzkFmIFKy"
* status = #final
* code = $loinc#11374-6 "Injury incident description Narrative"
* subject.reference = "Patient/us-core-patient-a-freeman"
* effectiveDateTime.extension
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