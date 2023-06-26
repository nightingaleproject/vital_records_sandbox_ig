Profile: ObservationDateOfLastOtherPregnancyOutcome
Parent: Observation
Id: Observation-date-of-last-other-pregnancy-outcome
Title: "Observation - Date of Last Other Pregnancy Outcome"
Description: "This profile represents the date of the mother's last other pregnancy outcome (includes pregnancy losses of any gestational age, e.g., spontaneous or induced losses or ectopic pregnancies) (do not include this birth)."
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2023-04-25T05:49:55.806+00:00"
* ^meta.source = "#n61yAjHGoo3s0EoJ"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#68500-8
  * ^short = "Date last other pregnancy outcome"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords)
* focus 1..1 MS
* focus only Reference(PatientMotherVitalRecords)
* value[x] 1..1 MS
* value[x] only dateTime
  * ^short = "Date of last other pregnancy outcome"