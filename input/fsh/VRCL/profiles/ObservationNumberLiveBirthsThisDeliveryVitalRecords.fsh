Profile: ObservationNumberLiveBirthsThisDeliveryVitalRecords
Parent: Observation
Id: Observation-number-live-births-this-delivery-vr
Title: "Observation - Number of Live Births This Delivery Vital Records"
Description: "The number of live births in this delivery."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-12T22:13:25.247+00:00"
* ^meta.source = "#Vk2OJVI3ojINJQC8"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#73773-4
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer