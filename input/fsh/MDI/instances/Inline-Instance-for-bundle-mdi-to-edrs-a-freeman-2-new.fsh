Instance: Inline-Instance-for-bundle-mdi-to-edrs-a-freeman-2-new
InstanceOf: ObservationInjuryIncidentVitalRecordsNew
Usage: #inline
* id = "observation-how-death-injury-occurred-a-freeman-med-ingest"
* meta
  * versionId = "8"
  * lastUpdated = "2022-08-15T20:52:05.129+00:00"
  * source = "#amRl9AqJzkFmIFKy"
* status = #final
* code = $loinc#11374-6 "Injury incident description Narrative"
* subject.reference = "Patient/us-core-patient-a-freeman"
* effectiveDateTime.extension[ExtensionPartialDateTime]
  * extension[ExtensionDateDay].valueUnsignedInt = 8
  * extension[ExtensionDateMonth].valueUnsignedInt = 1
  * extension[ExtensionDateYear].valueUnsignedInt = 2022
  * extension[ExtensionDateTime].valueTime.extension[dataabsent].valueCode = $dataabsentreason401#unknown
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