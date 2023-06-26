Profile: ObservationMethodOfDisposition
Parent: Observation
Id: Observation-method-of-disposition
Title: "Observation - Method of Disposition"
Description: "This Observation profile represents the method of disposition of the deceased fetus."
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2023-04-25T05:52:29.312+00:00"
* ^meta.source = "#ygFkXuQ7Nwsq2s5w"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#88241-5
  * ^short = "Fetal remains disposition method"
* subject 1.. MS
* subject only Reference(PatientDecedentFetusVitalRecords)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PHVS_FetalRemainsDispositionMethod_NCHS (required)
  * ^short = "The collection of disposition methods of fetal remains used within birth and fetal death reporting."
  * ^binding.description = "Fetal Remains Disposition Method (NCHS)"