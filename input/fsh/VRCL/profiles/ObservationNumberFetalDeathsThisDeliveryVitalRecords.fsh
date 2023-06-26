Profile: ObservationNumberFetalDeathsThisDeliveryVitalRecords
Parent: Observation
Id: Observation-number-fetal-deaths-this-delivery-vr
Title: "Observation - Number of Fetal Deaths This Delivery Vital Records"
Description: "The number of fetal deaths in this delivery."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-12T22:13:15.687+00:00"
* ^meta.source = "#QPj6k6Ckq0Xg9gDX"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#73772-6
  * ^short = "LOINC LCN: Number of fetal deaths delivered"
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer