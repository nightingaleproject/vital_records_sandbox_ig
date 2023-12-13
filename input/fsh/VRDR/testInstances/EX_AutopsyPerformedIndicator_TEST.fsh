Instance: AutopsyPerformedIndicator-Example1-TEST
InstanceOf: AutopsyPerformedIndicator
Usage: #example
Description: "AutopsyPerformedIndicator-Example1-TEST"
* insert AddMetaProfile(AutopsyPerformedIndicator)
* status = #final
* subject = Reference(Decedent-Example1-TEST)
* valueCodeableConcept = $v2-0136#Y "Yes"
* component[autopsyResultsAvailable].valueCodeableConcept = $v2-0136#Y "Yes"