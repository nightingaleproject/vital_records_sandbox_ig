Instance: DecedentAge-Example1-TEST
InstanceOf: DecedentAge
Usage: #example
Description: "DecedentAge-Example1-TEST"
* insert AddMetaProfile(DecedentAge)
* status = #final
* subject = Reference(Decedent-Example1-TEST)
* valueQuantity.value = 42
* valueQuantity.code = #a
* valueQuantity.system = $UCUM
* valueQuantity.unit = "years"
* valueQuantity.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#0 "Edit Passed"
