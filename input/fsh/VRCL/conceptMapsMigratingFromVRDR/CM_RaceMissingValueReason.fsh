Instance: RaceMissingValueReasonCM
InstanceOf: ConceptMap
// Id: vrdr-race-missing-value-reason-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(RaceMissingValueReason, ValueSetRaceMissingValueReasonVitalRecords)
* insert AddGroup("IJE",[[Canonical(CodeSystemMissingValueReasonVitalRecords)]])
* insert MapConcept( #R,  "Refused",#R, "Refused")
* insert MapConcept( #S,  "Sought\, but unknown",#S, "Sought\, but unknown")
* insert MapConcept( #C,  "Not obtainable",#C, "Not obtainable")