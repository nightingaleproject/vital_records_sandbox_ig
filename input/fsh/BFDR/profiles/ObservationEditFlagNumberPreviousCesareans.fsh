Profile: ObservationEditFlagNumberPreviousCesareans
Parent: Observation
Id: Observation-edit-flag-number-previous-cesareans
Title: "Observation - Edit Flag Number of Previous Cesareans"
Description: "This profile indicates whether the original number of previous cesareans data provided passed validation checks."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:51:18.077+00:00"
* ^meta.source = "#00hN0cgMBZWwumj0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1488
  * ^short = "Number of Previous Cesareans edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_NumberOfPreviousCesareansEditFlags_NCHS (required)
  * ^short = "To reflect the relevant edit possibilities for number of previous cesareans."
  * ^binding.description = "Number Of Previous Cesareans Edit Flags (NCHS)"