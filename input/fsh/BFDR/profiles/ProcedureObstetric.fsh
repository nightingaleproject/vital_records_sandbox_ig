Profile: ProcedureObstetric
Parent: USCoreProcedureProfile
Id: Procedure-obstetric
Title: "Procedure - Obstetric"
Description: "This profile represents information about a particular medical treatment or invasive/manipulative procedure that was performed during this pregnancy specifically in the treatment of the pregnancy, management of labor and/or delivery."
* code from ValueSetObstetricProcedure (required)
  * ^short = "The value set contains the list of values used to specify selected medical treatments or invasive / manipulative procedures performed during this pregnancy specifically for management of labor and / or delivery."
  * ^binding.description = "Obstetric Procedures (NCHS)"
* subject only Reference(PatientMotherVitalRecordsNew)
* outcome MS
* outcome from $procedure-outcome (required)
  * ^short = "Outcome, if procedure was performed."
  * ^binding.description = "ProcedureOutcomeCodes(SNOMEDCT)"