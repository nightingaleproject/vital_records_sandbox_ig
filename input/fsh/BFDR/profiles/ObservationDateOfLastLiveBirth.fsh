Profile: ObservationDateOfLastLiveBirth
Parent: Observation
Id: Observation-date-of-last-live-birth
Title: "Observation - Date of Last Live Birth"
Description: "This profile represents the date of the mother's last live born infant (do not include this birth)."
* ^meta.versionId = "11"
* ^meta.lastUpdated = "2023-04-25T05:49:53.600+00:00"
* ^meta.source = "#a2cDltmR29Rx7sah"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#68499-3
  * ^short = "Date last live birth"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* focus 1..1 MS
* focus only Reference(PatientMotherVitalRecords)
* value[x] 1..1 MS
* value[x] only dateTime
  * ^short = "Date of of last live birth"