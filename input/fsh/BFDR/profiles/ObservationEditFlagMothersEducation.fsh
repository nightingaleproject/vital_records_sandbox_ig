Profile: ObservationEditFlagMothersEducation
Parent: Observation
Id: Observation-edit-flag-mothers-education
Title: "Observation - Edit Flag Mother's Education"
Description: "This profile indicates whether the original mother's education data provided passed validation checks."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:51:14.298+00:00"
* ^meta.source = "#8hvzbdZdMpWcVW9w"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1484
  * ^short = "Mohter's Education edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_EditFlags_NCHS (required)
  * ^short = "To reflect whether the content of a related field has been subject to edit"
  * ^binding.description = "Edit Flags (NCHS)"