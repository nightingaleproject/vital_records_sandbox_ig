Profile: ObservationDecedentDispositionMethodVitalRecordsNew
Parent: Observation
Id: Observation-decedent-disposition-method-vr-new
Title: "Decedent Disposition Method"
Description: "Decedent Disposition Method (Observation)"
//* status 1..1 loosening this restriction as BFDR does not have status 
//* status only code
//* status = #final 
* code 1..1
* code only CodeableConcept
* code = $loinc#80905-3 // "Body disposition method"
* subject 1..1
* subject only Reference(Decedent) //BFDR references Patient - Decedent Fetus - Vital Records, which is a USCorePatient. Need to consolidate?
* performer ^short = "Mortician" //BFDR does not include performer
* performer ^definition = "Performer is optional, but if provided should be the Mortician using a USCorePractitioner."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from MethodOfDispositionVS (required) //BFDR uses a different vs that does not include the entombment code