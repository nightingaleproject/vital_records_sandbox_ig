Profile: ObservationInfantBreastfedAtDischarge
Parent: Observation
Id: Observation-infant-breastfed-at-discharge
Title: "Observation - Infant Breastfed at Discharge"
Description: "This profile represents whether or not the infant was being breastfed at discharge."
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2023-04-25T05:52:27.206+00:00"
* ^meta.source = "#l76uCpSwc3YMxGu0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#73756-9
  * ^short = "Infant is being breastfed at discharge [US Standard Certificate of Live Birth]"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords)
* value[x] 1..1 MS
* value[x] only boolean
  * ^short = "Is the infant being breastfed at discharge?"