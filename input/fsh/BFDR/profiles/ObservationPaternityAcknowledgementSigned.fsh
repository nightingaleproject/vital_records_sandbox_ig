Profile: ObservationPaternityAcknowledgementSigned
Parent: Observation
Id: Observation-paternity-acknowledgement-signed
Title: "Observation - Paternity Acknowledgement Signed"
Description: "This Observation represents whether or not a paternity acknowledgement was signed by the father if the mother was not married at conception, at the time of birth, or at any time between conception and giving birth."
* ^meta.versionId = "11"
* ^meta.lastUpdated = "2023-04-25T05:53:28.722+00:00"
* ^meta.source = "#Src6h3P8tST7lX3V"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#87302-6
  * ^short = "Paternity acknowledgment form signed Father"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords)
* focus 1..1 MS
* focus only Reference(RelatedPersonFatherNaturalVitalRecords)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_YesNoNotApplicable_NCHS (required)
  * ^short = "Whether or not a paternity acknowledgement was signed by the father"