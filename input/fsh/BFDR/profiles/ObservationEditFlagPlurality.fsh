Profile: ObservationEditFlagPlurality
Parent: Observation
Id: Observation-edit-flag-plurality
Title: "Observation - Edit Flag Plurality"
Description: "This profile indicates whether the original plurality data provided passed validation checks."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:51:19.093+00:00"
* ^meta.source = "#pRoHgxyTR7khvj8w"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1489
  * ^short = "Plurality edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_PluralityEditFlags_NCHS (required)
  * ^short = "To reflect the relevant edit possibilities for plurality."
  * ^binding.description = "Plurality Edit Flags (NCHS)"