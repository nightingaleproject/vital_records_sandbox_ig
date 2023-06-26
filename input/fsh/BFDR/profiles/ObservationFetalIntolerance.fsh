Profile: ObservationFetalIntolerance
Parent: Observation
Id: Observation-fetal-intolerance
Title: "Observation - Fetal Intolerance"
Description: "This Observation profile indicates a characteristic of labor of fetal intolerance."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-04-25T05:51:22.043+00:00"
* ^meta.source = "#u3U3kIUnERjtQ4SZ"
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#73813-8
  * ^short = "Characteristics of labor and delivery [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#130955003
  * ^short = "Fetal distress (finding)"