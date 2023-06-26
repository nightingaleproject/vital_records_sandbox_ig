Profile: ObservationFetalPresentation
Parent: Observation
Id: Observation-fetal-presentation
Title: "Observation - Fetal Presentation at Birth/Delivery"
Description: "This Observation profile represents the fetal presentation (orientation within the mother's womb) of a fetus prior to delivery/birth."
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2023-04-25T05:52:36.059+00:00"
* ^meta.source = "#uRVyrkiXFZSHzI9a"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#73761-9
  * ^short = "Fetal presentation at birth/delivery"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_FetalPresentations_NCHS (required)
  * ^short = "The value set contains the list of the different presentations (orientations within the mother's womb) that a fetus may be in prior to delivery."
  * ^definition = "The presentation (orientation within the mother's womb) that a fetus may be in prior to delivery/birth."
  * ^binding.description = "Fetal Presentations (NCHS)"