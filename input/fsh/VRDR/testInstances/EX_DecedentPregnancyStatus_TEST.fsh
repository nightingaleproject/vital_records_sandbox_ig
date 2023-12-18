Instance: DecedentPregnancyStatus-Example1-TEST
InstanceOf: DecedentPregnancyStatus
Usage: #example
Description: "DecedentPregnancyStatus-Example1-TEST"
* insert AddMetaProfile(DecedentPregnancyStatus)
* subject = Reference(Decedent-Example1-TEST)
* status = #final
* valueCodeableConcept = DeathPregnancyStatusCS#2 "Pregnant at time of death"
* valueCodeableConcept.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#2 "Edit Failed, Data Queried, but not Verified"
