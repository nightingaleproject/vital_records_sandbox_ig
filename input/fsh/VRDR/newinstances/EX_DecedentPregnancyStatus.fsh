Instance: DecedentPregnancyStatus-Example1
InstanceOf: DecedentPregnancyStatusNew
Usage: #example
Description: "DecedentPregnancyStatus-Example1"
* insert AddMetaProfile(ObservationDecedentPregnancyVitalRecordsNew)
* subject = Reference(Decedent-Example1)
* status = #final
* valueCodeableConcept = CodeSystemDeathPregnancyStatusVitalRecords#2 "Pregnant at time of death"
* valueCodeableConcept.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#2 "Edit Failed, Data Queried, but not Verified"
