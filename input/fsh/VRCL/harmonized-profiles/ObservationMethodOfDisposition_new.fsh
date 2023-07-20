/* 
VRDR includes status and performer (0..*).   (No real difference.  Just that status = final) --> Loosened restriction on status

BFDR subject is Patient ("Patient - Decedent Fetus - Vital Records") 
VRDR's subject is Decedent. ==> need to decide whether to consolidate. --> generalized to USCorePatient

value is bound to different value sets in VRDR and BFDR.  VRDR includes an entombement code. --> bound to MethodOfDispositionVS in VRDR, which includes the entombment code.

Marked MS in BFDR: code, subject, value[x] (disposition methods codeableConcept). No elements marked MS in VRDR.
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