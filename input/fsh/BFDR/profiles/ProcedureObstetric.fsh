Profile: ProcedureObstetric
Parent: USCoreProcedureProfile
Id: Procedure-obstetric
Title: "Procedure - Obstetric"
Description: "This profile represents information about a particular medical treatment or invasive/manipulative procedure that was performed during this pregnancy specifically in the treatment of the pregnancy, management of labor and/or delivery."
* ^meta.versionId = "18"
* ^meta.lastUpdated = "2023-04-25T05:57:23.481+00:00"
* ^meta.source = "#RLKek9WOhsDskgic"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code from PHVS_ObstetricProcedures_NCHS (required)
  * ^short = "The value set contains the list of values used to specify selected medical treatments or invasive / manipulative procedures performed during this pregnancy specifically for management of labor and / or delivery."
  * ^binding.description = "Obstetric Procedures (NCHS)"
* subject only Reference(PatientMotherVitalRecords)
* outcome MS
* outcome from $procedure-outcome (required)
  * ^short = "Outcome, if procedure was performed."
  * ^binding.description = "ProcedureOutcomeCodes(SNOMEDCT)"