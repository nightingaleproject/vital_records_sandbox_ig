Profile: ObservationEditFlagFathersEducation
Parent: Observation
Id: Observation-edit-flag-fathers-education
Title: "Observation - Edit Flag Father's Education"
Description: "This profile indicates whether the original father's education data provided passed validation checks."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:50:05.912+00:00"
* ^meta.source = "#Kvx2Iej8noxSySvJ"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1480
  * ^short = "Father's Education edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_EducationLevelEditFlags_NCHS (required)
  * ^short = "To reflect the relevant edit possibilities for education level."
  * ^binding.description = "Education Level Edit Flags (NCHS)"