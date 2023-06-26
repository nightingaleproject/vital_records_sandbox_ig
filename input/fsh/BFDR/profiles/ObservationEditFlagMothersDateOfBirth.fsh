Profile: ObservationEditFlagMothersDateOfBirth
Parent: Observation
Id: Observation-edit-flag-mothers-date-of-birth
Title: "Observation - Edit Flag Mother's Date of Birth"
Description: "This profile indicates whether the original mother's date of birth data provided passed validation checks."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:51:12.502+00:00"
* ^meta.source = "#TvfPdRwDZ6DJedxa"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1482
  * ^short = "Mother's Date of Birth edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_BirthdateEditFlags_NCHS (required)
  * ^label = "To reflect the relevant edit possibilities for birthdate."
  * ^short = "Birthdate Edit Flags (NCHS)"
  * ^binding.description = "Birthdate Edit Flags (NCHS)"