Profile: ObservationPluralityVitalRecords
Parent: Observation
Id: Observation-plurality-vr
Title: "Observation - Plurality Vital Records"
Description: "The number of fetuses delivered live or dead at any time in the pregnancy regardless of gestational age, or if the fetuses were delivered at different dates in the pregnancy. ('Reabsorbed' fetuses, those which are not 'delivered' (expulsed or extracted from the mother) should not be counted.) Include all live births and fetal losses resulting from this pregnancy."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:55:05.546+00:00"
* ^meta.source = "#0Yc1KG6qJkANeG77"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#57722-1
* code MS
* subject 1.. MS
* subject only Reference(PatientMotherVitalRecords or PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* value[x] 1.. MS
* value[x] only integer