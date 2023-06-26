Profile: ObservationMotherPrepregnancyWeightVitalRecords
Parent: USCoreVitalSignsProfile
Id: Observation-mother-prepregnancy-weight-vr
Title: "Observation - Mother Prepregnancy Weight Vital Records"
Description: "The weight of the mother before becoming pregnant."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:56:07.537+00:00"
* ^meta.source = "#cV1vMGFTtsYfubt4"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#56077-1
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only Quantity