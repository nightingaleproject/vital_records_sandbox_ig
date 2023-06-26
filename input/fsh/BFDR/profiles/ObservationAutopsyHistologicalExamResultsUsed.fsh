Profile: ObservationAutopsyHistologicalExamResultsUsed
Parent: Observation
Id: Observation-autopsy-histological-exam-results-used
Title: "Observation - Autopsy or Histological Exam Results Used"
Description: "This profile represents whether or not the results of a performed autopsy or a performed histological placental examination were used as part of determining the cause of death."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:49:45.602+00:00"
* ^meta.source = "#ozciWm1U5HHDglaW"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#74498-7
  * ^short = "Autopsy or histological placental examination results were used [US Standard Report of Fetal Death]"
* subject 1.. MS
* subject only Reference(PatientDecedentFetusVitalRecords)
* value[x] 1..1 MS
* value[x] only boolean
  * ^short = "Were autopsy or histological placental examinations results used in determining the cause of fetal death?"