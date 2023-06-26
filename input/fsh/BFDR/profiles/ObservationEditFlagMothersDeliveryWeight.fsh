Profile: ObservationEditFlagMothersDeliveryWeight
Parent: Observation
Id: Observation-edit-flag-mothers-delivery-weight
Title: "Observation - Edit Flag Mother's Delivery Weight"
Description: "This profile indicates whether the original mother's delivery weight data provided passed validation checks."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:51:13.687+00:00"
* ^meta.source = "#G40Rap0fKceNW46S"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1483
  * ^short = "Mother's At Delivery Weight edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_PregnancyReportEditFlags_NCHS (required)
  * ^short = "To reflect the relevant edit possibilities for pregnancy report of Education, Mother's height, Mother's pre-pregnancy weight and Prenatal care visit number and also to reflect the relevant edit possibilities for pregnancy status of Female decedent."
  * ^binding.description = "Pregnancy Report Edit Flags (NCHS)"