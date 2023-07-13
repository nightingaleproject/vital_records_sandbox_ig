Instance: observation-how-death-injury-occurred-a-freeman-med-ingest
InstanceOf: ObservationHowDeathInjuryOccurred
Title: "Observation - How Death Injury Occurred - Freeman - Medication ingestion"
Description: "Observation - How Death Injury Occurred: Freeman - Medication ingestion (fentanyl) example"
Usage: #example
* meta
  * versionId = "9"
  * lastUpdated = "2022-08-16T00:44:09.695+00:00"
  * source = "#v0klDaIjJfYD26Jw"
* status = #final
* code = $loinc#11374-6 "Injury incident description Narrative"
* subject.reference = "Patient/us-core-patient-a-freeman"
* effectiveDateTime.extension[partialDateTime].extension[day].valueUnsignedInt = 8
* effectiveDateTime.extension[partialDateTime].extension[month].valueUnsignedInt = 1
* effectiveDateTime.extension[partialDateTime].extension[year].valueUnsignedInt = 2022
* effectiveDateTime.extension[partialDateTime].extension[time].valueTime.extension[dataabsent].valueCode = $dataabsentreason401#unknown
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