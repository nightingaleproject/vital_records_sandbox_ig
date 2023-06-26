Profile: ObservationICUAdmission
Parent: Observation
Id: Observation-icu-admission
Title: "Observation - ICU Admission"
Description: "This profile indicates that the maternal morbidity of an admission to the ICU was present. NOTE: this may be better modeled as an Encounter."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-04-25T05:52:26.303+00:00"
* ^meta.source = "#WW0gg3NvHmB5rTmr"
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#73781-7
  * ^short = "Maternal morbidity [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#309904001
  * ^short = "Intensive care unit (environment)"