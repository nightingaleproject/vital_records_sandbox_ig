Profile: ObservationEditFlagBirthweight
Parent: Observation
Id: Observation-edit-flag-birthweight
Title: "Observation - Edit Flag Birthweight"
Description: "This profile indicates whether the original birthweight data provided passed validation checks."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:49:58.314+00:00"
* ^meta.source = "#lcNHoZVzJpzFjeaf"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PCH1478
  * ^short = "Birthweight edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_BirthWeightEditFlags_NCHS (required)
  * ^short = "To reflect the relevant edit possibilities for birth weight."
  * ^binding.description = "Birth Weight Edit Flags (NCHS)"