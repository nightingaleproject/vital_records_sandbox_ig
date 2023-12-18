Instance: DecedentUsualWork-Example1-TEST
InstanceOf: ObservationUsualWorkVitalRecords
Usage: #example
Description: "DecedentUsualWork-Example1 - without coded values-TEST"
* insert AddMetaProfile(ObservationUsualWorkVitalRecords)
* status = #final
* subject = Reference(Decedent-Example1-TEST)
* valueCodeableConcept.text = "secretary"
//* valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
//* component[odh-UsualIndustry].code = $loinc#21844-6 "History of Usual industry"
* component[odh-UsualIndustry].valueCodeableConcept.text = "State agency"
//* component.valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
//* effectivePeriod.start = "2001"
//* effectivePeriod.end = "2005"

Instance: DecedentUsualWork-Example2-TEST
InstanceOf: ObservationUsualWorkVitalRecords
Usage: #example
Description: "DecedentUsualWork-Example2 - with coded values-TEST"
* insert AddMetaProfile(ObservationUsualWorkVitalRecords)
* status = #final
* subject = Reference(Decedent-Example1-TEST)
//* valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
* valueCodeableConcept.text = "secretary"
//* component.code = $loinc#21844-6 "History of Usual industry"
//* component.valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
* component[odh-UsualIndustry].valueCodeableConcept.text = "State agency"
//* effectivePeriod.start = "2001"
//* effectivePeriod.end = "2005"
