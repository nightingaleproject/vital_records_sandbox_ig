/* Subject: BFRD uses Decedent Fetus, VRDR uses Decedent --> generalized to USCorePatient
Loosened restriction on status
Bound value[x] to MethodOfDispositionVS, which includes the entombment code. BFDR was bound to another VS that does not include entombment code
*/

Profile: ObservationDecedentDispositionMethodVitalRecordsNew
Parent: Observation
Id: Observation-decedent-disposition-method-vr-new
Title: "Decedent Disposition Method"
Description: "Decedent Disposition Method (Observation)"
//* status = #final 
* status ^short = "Should this be 'final'?"
* code = $loinc#80905-3 // "Body disposition method"
* subject 1..1
* subject only Reference(Patient) //generalized to Patient
* performer ^short = "Mortician" //BFDR does not include performer
* performer ^definition = "Mortician is optional, and is not referenced by the fetal death or mortality use cases"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from MethodOfDispositionVS (required) //BFDR uses a different vs that does not include the entombment code