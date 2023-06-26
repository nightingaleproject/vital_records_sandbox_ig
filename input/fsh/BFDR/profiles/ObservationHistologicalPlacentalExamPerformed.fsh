Profile: ObservationHistologicalPlacentalExamPerformed
Parent: Observation
Id: Observation-histological-placental-exam-performed
Title: "Observation - Histological Placental Exam Performed"
Description: "This profile represents whether or not a histological placental examination was performed."
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2023-04-25T05:52:24.645+00:00"
* ^meta.source = "#PV78LmCy3Co1uf4R"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#73767-6
  * ^short = "Histological placental examination was performed [US Standard Report of Fetal Death]"
* subject 1.. MS
* subject only Reference(PatientDecedentFetusVitalRecords)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_HistologicalPlacentalExamination_NCHS (required)
  * ^short = "The value set contains the list of values used to indicate whether or not a histological placental examination was performed."
  * ^binding.description = "Histological Placental Examination (NCHS)"