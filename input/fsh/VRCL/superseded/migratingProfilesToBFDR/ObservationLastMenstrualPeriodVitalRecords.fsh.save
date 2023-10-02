Profile: ObservationLastMenstrualPeriodVitalRecords
Parent: Observation
Id: Observation-last-menstrual-period-vr
Title: "Observation - Last Menstrual Period Vital Records"
Description: "This profile represents the date of the last menstrual period of the patient. The first day of last menstrual period should be captured. The effectiveTime captures the observation date."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-13T01:52:55.452+00:00"
* ^meta.source = "#ZIIqUEQwTqX9nwop"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#8665-2
* code MS
  * ^short = "Last menstrual period start date"
* subject 1.. MS
* subject only Reference(PatientMotherVitalRecordsNew)
* effective[x] only dateTime
* effective[x] MS
  * ^short = "Observation date (date on which the observation was reported to the provider)."
  * ^definition = "The date on which the observation was made/reported to the provider for recording in the EHR."
* value[x] 1.. MS
* value[x] only dateTime
  * ^short = "Start of last menstrual period"
  * ^definition = "Start date of last menstrual period."