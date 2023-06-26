Profile: ObservationNICUAdmission
Parent: Observation
Id: Observation-nicu-admission
Title: "Observation - NICU Admission"
Description: "This profile indicates that the abnormal condition of an admission to the NICU was present. NOTE: this may be better modeled as an Encounter."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2023-04-25T05:52:32.997+00:00"
* ^meta.source = "#Dfarrc3xSt1HCcsx"
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#73812-0
  * ^short = "Abnormal conditions of the newborn [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(PatientChildVitalRecords)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#405269005
  * ^short = "Neonatal intensive care unit (environment)"