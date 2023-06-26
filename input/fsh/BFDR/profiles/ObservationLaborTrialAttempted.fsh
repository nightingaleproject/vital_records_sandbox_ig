Profile: ObservationLaborTrialAttempted
Parent: Observation
Id: Observation-labor-trial-attempted
Title: "Observation - Labor Trial Attempted"
Description: "This Observation profile represents whether, in the case of a cesarean delivery, a trial of labor was attempted."
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2023-04-25T05:52:27.931+00:00"
* ^meta.source = "#F5oU3IEY9t7liNUm"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#73760-1
  * ^short = "If cesarean, a trial of labor was attempted [US Standard Certificate of Live Birth]"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
* value[x] 1..1
* value[x] only boolean