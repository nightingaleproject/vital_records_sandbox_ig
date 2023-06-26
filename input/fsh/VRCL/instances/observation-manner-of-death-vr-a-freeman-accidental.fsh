Instance: observation-manner-of-death-vr-a-freeman-accidental
InstanceOf: Observation
Title: "Observation - Manner of Death Vital Records - A Freeman, accidental"
Description: "Example "
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2022-12-08T18:13:43.359+00:00"
  * source = "#RFssOokF8NmZXbLh"
  * profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-manner-of-death-vr"
* status = #final
* code = $loinc#69449-7 "Manner of death"
* subject = Reference(us-core-patient-vr-a-freeman)
* performer = Reference(Practitioner/us-core-practitioner-vr-s-jones)
* valueCodeableConcept = $sct#7878000 "Accidental death"