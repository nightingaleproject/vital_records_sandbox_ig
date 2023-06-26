Profile: ObservationPregnancyRiskFactorVitalRecords
Parent: Observation
Id: Observation-pregnancy-risk-factor-vr
Title: "Observation - Pregnancy Risk Factor Vital Records"
Description: "Selected medical risk factors of the mother during the pregnancy."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:55:13.913+00:00"
* ^meta.source = "#tvuJgK1Ze8T9ieMC"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#73775-9
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from PHVS_PregnancyRiskFactors_NCHS (extensible)
  * ^short = "The value set contains the list of values used to indicate selected medical risk factors of the mother during this pregnancy."
  * ^binding.description = "Pregnancy Risk Factors (NCHS)"