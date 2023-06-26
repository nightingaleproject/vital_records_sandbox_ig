Profile: ObservationPlannedToDeliverAtHome
Parent: Observation
Id: Observation-planned-to-deliver-at-home
Title: "Observation - Planned to Deliver at Home"
Description: "This Observation profile represents whether or not a home birth was planned for the infant."
* ^meta.versionId = "22"
* ^meta.lastUpdated = "2023-04-25T05:53:29.502+00:00"
* ^meta.source = "#2CUHoSN2sia0nFCy"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#73765-0
  * ^short = "Mother Planned to deliver at home [US Standard Certificate of Live Birth]"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* value[x] 1..1 MS
* value[x] only boolean
  * ^short = "Planned to deliver at home?"