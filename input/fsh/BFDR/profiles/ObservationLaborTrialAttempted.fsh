Profile: ObservationLaborTrialAttempted
Parent: Observation
Title: "Observation - Labor Trial Attempted"
Description: "This Observation profile represents whether, in the case of a cesarean delivery, a trial of labor was attempted."
* code 1..1 MS
* code = $loinc#73760-1
  * ^short = "If cesarean, a trial of labor was attempted [US Standard Certificate of Live Birth]"
* subject 1.. MS
* subject only Reference(PatientMotherVitalRecordsNew)
* focus 1.. MS
* focus only Reference(PatientChildVitalRecordsNew or PatientDecedentFetusVitalRecordsNew)
* value[x] 1..1
* value[x] only boolean