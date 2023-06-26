Profile: ObservationEditFlagNumberPrenatalCareVisits
Parent: Observation
Id: Observation-edit-flag-number-prenatal-care-visits
Title: "Observation - Edit Flag Number Prenatal Care Visits"
Description: "This profile indicates whether the original number of prenatal care visits data provided passed validation checks."
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2023-04-25T05:51:17.098+00:00"
* ^meta.source = "#WosyIKHE01lgurQ3"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1487
  * ^short = "Number of Prenatal Care Visits edit flag"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_PregnancyReportEditFlags_NCHS (required)
  * ^short = "To reflect the relevant edit possibilities for pregnancy report of Education, Mother's height, Mother's pre-pregnancy weight and Prenatal care visit number and also to reflect the relevant edit possibilities for pregnancy status of Female decedent."
  * ^binding.description = "Pregnancy Report Edit Flags (NCHS)"