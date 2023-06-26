Profile: ObservationNoneOfSpecifiedMaternalMorbidities
Parent: Observation
Id: Observation-none-of-specified-maternal-morbidities
Title: "Observation - None Of Specified Maternal Morbidities"
Description: "This profile indicates that none of the specified maternal morbidities were present."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-04-25T05:53:27.245+00:00"
* ^meta.source = "#aAw9v3dbkXITPnCo"
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
* value[x] = $sct#260413007
  * ^short = "None"