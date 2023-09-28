Profile: ObservationNumberPrenatalVisitsVitalRecords
Parent: Observation
Id: Observation-number-prenatal-visits-vr
Title: "Observation - Number of Prenatal Visits Vital Records"
Description: "The total number of prenatal visits for the mother. The dates of the first and last prenatal visit are indicated by the effective date range. If the mother received no prenatal care, the value should indicate 0 visits."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:54:42.976+00:00"
* ^meta.source = "#U3mNAWxLUeBCBw2L"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#68493-6
* code MS
* subject 1.. MS
* subject only Reference(PatientMotherVitalRecordsNew)
* effective[x] only Period
* effective[x] MS
* value[x] 1.. MS
* value[x] only integer