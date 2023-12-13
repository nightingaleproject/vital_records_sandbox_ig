Instance: CauseOfDeathPart1-Example1-TEST
InstanceOf: CauseOfDeathPart1
Usage: #example
Description: "CauseOfDeathPart1-Example1-TEST"
* meta.profile = Canonical(CauseOfDeathPart1)
* valueCodeableConcept.text = "Cardiopulmonary arrest"
* subject = Reference(Decedent-Example1-TEST)
* component[lineNumber].valueInteger = 1
* component[interval].valueString = "4 hours"
* performer = Reference(Certifier-Example1-TEST)
* status = #final

Instance: CauseOfDeathPart1-Example2-TEST
InstanceOf: CauseOfDeathPart1
Usage: #example
Description: "CauseOfDeathPart1-Example2-TEST"
* meta.profile = Canonical(CauseOfDeathPart1)
* valueCodeableConcept.text = "Eclampsia"
* component[lineNumber].valueInteger = 2
* component[interval].valueString = "3 months"
* subject = Reference(Decedent-Example1-TEST)
* performer = Reference(Certifier-Example1-TEST)
* status = #final

Instance: CauseOfDeathPart2-Example1-TEST
InstanceOf: CauseOfDeathPart2
Usage: #example
Description: "CauseOfDeathPart2-Example1-TEST"
* meta.profile = Canonical(CauseOfDeathPart2)
* valueCodeableConcept.text = "hypertensive heart disease"
* subject = Reference(Decedent-Example1-TEST)
* performer = Reference(Certifier-Example1-TEST)
* status = #final

// Instance: CauseOfDeathPathway-Example1
// InstanceOf: CauseOfDeathPathway
// Usage: #example
// Description: "CauseOfDeathPathway-Example1"
// * insert AddMetaProfile(CauseOfDeathPathway)
// * status = #current
// * source = Reference(Certifier-Example1)
// // * orderedBy = $list-order#priority "Sorted by Priority"
// * entry[0].item = Reference(CauseOfDeathPart1-Example1)
// * entry[+].item = Reference(CauseOfDeathPart1-Example2)


/*  Certifier */
Instance: Certifier-Example1-TEST
InstanceOf: Certifier
Usage: #example
Description: "Certifier-Example1-TEST"
* insert AddMetaProfile(Certifier)
* name.use = #official
* name.family = "Black"
* name.given = "Jim"
* address.line = "44 South Street"
* address.city = "Bird in Hand"
* address.state = "PA"
* address.postalCode = "17505"
* address.country = "US"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339100"
* qualification.code = $sct#434641000124105
