Profile: ObservationAntibioticsAdministeredDuringLabor
Parent: Observation
Id: Observation-antibiotics-during-labor
Title: "Observation - Antibiotics Administered During Labor"
Description: "This Observation profile indicates a characteristic of labor of antibiotics administered during labor."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-04-25T00:30:25.349+00:00"
* ^meta.source = "#eCtK9mX2mgxVBWlB"
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
* value[x] = $sct#434691000124101
  * ^short = "Antibacterial administered during labor (situation)"