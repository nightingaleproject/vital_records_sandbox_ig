Profile: ObservationEditFlagMothersHeight
Parent: Observation
Id: Observation-edit-flag-mothers-height
Title: "Observation - Edit Flag Mother's Height"
Description: "This profile indicates whether the original mother's height data provided passed validation checks."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:51:15.539+00:00"
* ^meta.source = "#6IZrQWzqDOcgYUNA"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1485
  * ^short = "Mother's Height edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_PregnancyReportEditFlags_NCHS (required)
  * ^short = "To reflect the relevant edit possibilities for pregnancy report of Education, Mother's height, Mother's pre-pregnancy weight and Prenatal care visit number and also to reflect the relevant edit possibilities for pregnancy status of Female decedent."
  * ^binding.description = "Pregnancy Report Edit Flags (NCHS)"