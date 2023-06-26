Profile: ObservationMotherDeliveryWeightVitalRecords
Parent: USCoreVitalSignsProfile
Id: Observation-mother-delivery-weight-vr
Title: "Observation - Mother Delivery Weight Vital Records"
Description: "The weight of the mother at the time of birth/delivery."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:53:03.145+00:00"
* ^meta.source = "#OdF3ELE9DxYNf8yL"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#69461-2
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only Quantity