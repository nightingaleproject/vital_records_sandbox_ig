Profile: ObservationMotherReceivedWICFood
Parent: Observation
Id: Observation-mother-received-wic-food
Title: "Observation - Mother Recieved WIC Food"
Description: "This profile represents whether or not the mother made use of the Women, Infants and Children (WIC) nutritional program during the pregnancy."
* ^meta.versionId = "23"
* ^meta.lastUpdated = "2023-04-25T05:52:31.329+00:00"
* ^meta.source = "#JY1wMP5uwCsY6Rbt"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#87303-4
  * ^short = "Mother WIC food recipient"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* focus 1..1 MS
* focus only Reference(PatientMotherVitalRecords)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_YesNoUnknown_CDC (required)
  * ^short = "Did mother get WIC food for herself during this pregnancy?"
  * ^binding.description = "Yes No Unknown (YNU)"