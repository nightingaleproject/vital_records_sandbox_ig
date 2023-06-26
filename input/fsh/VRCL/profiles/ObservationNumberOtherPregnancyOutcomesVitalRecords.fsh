Profile: ObservationNumberOtherPregnancyOutcomesVitalRecords
Parent: Observation
Id: Observation-number-other-pregnancy-outcomes-vr
Title: "Observation - Number of Other Pregnancy Outcomes Vital Records"
Description: "The total number of other pregnancy outcomes for the mother that did not result in a live birth  (included pregnancy losses of any gestational age, e.g., spontaneous or induced losses or ectopic pregnancies)."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:54:35.200+00:00"
* ^meta.source = "#algOWIHCKxuPFYe4"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#69043-8
* subject 1..
* subject only Reference(PatientMotherVitalRecords)
* value[x] 1..
* value[x] only integer