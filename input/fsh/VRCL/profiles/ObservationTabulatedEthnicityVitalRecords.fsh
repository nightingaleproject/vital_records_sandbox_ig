Profile: ObservationTabulatedEthnicityVitalRecords
Parent: Observation
Id: Observation-tabulated-ethnicity-vr
Title: "Observation - Tabulated Ethnicity Vital Records"
// may need description update
Description: "This profile records a code representing the ethnic affiliation information for the mother or father. The observation will convey, as coded data, information that is provided in text form.  If the value is unknown, set dataAbsentReason to \"unknown\"."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-12T22:13:36.031+00:00"
* ^meta.source = "#kviCRsH6jyulK2To"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#80978-0
  * ^short = "Tabulated ethnicity"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecordsNew or PatientDecedentFetusVitalRecordsNew)
* focus 1..1 MS
* focus only Reference(PatientMotherVitalRecordsNew or RelatedPersonMotherGestationalVitalRecords or RelatedPersonFatherNaturalVitalRecords)
* value[x] 0..1 MS
* value[x] only CodeableConcept
* value[x] from $v3-Ethnicity_1 (required)
  * ^label = "Ethnicity"
  * ^short = "Ethnicity"
  * ^binding.description = "Detailed Ethnicity"
* dataAbsentReason MS