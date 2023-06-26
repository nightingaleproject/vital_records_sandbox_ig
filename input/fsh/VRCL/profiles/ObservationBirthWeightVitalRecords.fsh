Profile: ObservationBirthWeightVitalRecords
Parent: USCoreVitalSignsProfile
Id: Observation-birth-weight-vr
Title: "Observation - Birth Weight Vital Records"
Description: "The weight of the infant/fetus at birth/delivery."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:52:14.257+00:00"
* ^meta.source = "#YlYWACS1QjJSokn7"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#8339-4
* subject 1..
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* value[x] 1..
* value[x] only Quantity