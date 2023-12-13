
Instance: EmergingIssues-Example1-TEST
InstanceOf: EmergingIssues
Usage: #example
Description: "EmergingIssues-Example1 make sure it is example-TEST"
* subject = Reference(Decedent-Example1-TEST)
* status = #final
* insert AddMetaProfile(EmergingIssues)
* component[EmergingIssue1_1].valueString = "H"
* component[EmergingIssue1_2].valueString = "I"
* component[EmergingIssue8_1].valueString = "Hi 8_1"
* component[EmergingIssue20].valueString = "Hi 20_1"