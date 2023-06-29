Instance: observation-cause-of-death-part1-vr-a-freeman
InstanceOf: ObservationCauseOfDeathPart1VitalRecords
Title: "Observation - Cause of Death Part1 Vital Records - A Freeman"
Description: "Example "
Usage: #example
* status = #final
* subject.reference = "Patient/us-core-patient-vr-a-freeman"
* performer = Reference(practitioner-vital-records-janet-seito-common)
* valueCodeableConcept.text = "Fentanyl toxicity"
* component[lineNumber]
  * valueInteger = 1
* component[interval]
  * code = $loinc#69440-6 "Disease onset to death interval"
  * valueString = "minutes to hours"