Profile: ObservationNoneOfSpecifiedCharacteristicsOfLaborAndDelivery
Parent: Observation
Id: Observation-none-of-specified-characteristics-labor-delivery
Title: "Observation - None Of Specified Characteristics of Labor and Delivery"
Description: "This profile indicates that none of the specified characteristics of labor and delivery were present."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-04-25T05:53:25.805+00:00"
* ^meta.source = "#QBwBRHYxeJwg1SWg"
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
* value[x] = $sct#260413007
  * ^short = "None"