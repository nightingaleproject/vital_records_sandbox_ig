Profile: ObservationEditFlagFathersDateOfBirth
Parent: Observation
Id: Observation-edit-flag-fathers-date-of-birth
Title: "Observation - Edit Flag Father's Date of Birth"
Description: "This profile indicates whether the original father's date of birth data provided passed validation checks."
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2023-04-25T05:50:03.198+00:00"
* ^meta.source = "#VPrKZlXAwsIS0naB"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1479
  * ^short = "Father's Date of Birth edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_BirthdateEditFlags_NCHS (required)
  * ^short = "To reflect the relevant edit possibilities for birthdate."
  * ^binding.description = "Birthdate Edit Flags (NCHS)"