Instance: observation-cause-of-death-part1-vr-a-freeman
InstanceOf: ObservationCauseOfDeathPart1VitalRecords
Title: "Observation - Cause of Death Part1 Vital Records - A Freeman"
Description: "Example "
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2022-12-08T18:13:43.360+00:00"
  * source = "#ca9mDhZ05JN2UxRZ"
* status = #final
* code = $loinc#69453-9 "Cause of death [US Standard Certificate of Death]"
* subject.reference = "Patient/us-core-patient-vr-a-freeman"
* performer.reference = "Practitioner/us-core-practitioner-vr-s-jones"
* valueCodeableConcept.text = "Fentanyl toxicity"
* component[lineNumber]
  * valueInteger = 1
* component[interval]
  * code = $loinc#69440-6 "Disease onset to death interval"
  * valueString = "minutes to hours"