Profile: ObservationNonVertexPresentation
Parent: Observation
Id: Observation-non-vertex-presentation
Title: "Observation - Non-Vertex Presentation"
Description: "This Observation profile indicates a characteristic of labor of non-vertex presentation."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2023-04-25T05:53:27.836+00:00"
* ^meta.source = "#k3hnN51CCR0ZABib"
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
* value[x] = $sct#15028002
  * ^short = "Abnormal fetal presentation (finding)"