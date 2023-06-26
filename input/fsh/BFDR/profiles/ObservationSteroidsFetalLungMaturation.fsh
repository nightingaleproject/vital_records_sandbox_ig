Profile: ObservationSteroidsFetalLungMaturation
Parent: Observation
Id: Observation-steroids-fetal-lung-maturation
Title: "Observation - Administration of Steroids for Fetal Lung Maturation"
Description: "This Observation profile indicates a characteristic of labor of administration of steroids for fetal lung maturation."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2023-04-25T05:53:31.886+00:00"
* ^meta.source = "#fTOCukAxJxQj86G1"
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
* value[x] = $sct#434611000124106
  * ^short = "Maternal antenatal administration of corticosteroids for fetal lung maturation (situation)"