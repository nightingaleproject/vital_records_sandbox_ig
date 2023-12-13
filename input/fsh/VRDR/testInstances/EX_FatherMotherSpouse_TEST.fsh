
Instance: DecedentFather-Example1-TEST
InstanceOf: DecedentFather
Usage: #example
Description: "DecedentFather-Example1-TEST"
* insert AddMetaProfile(DecedentFather)
* patient = Reference(Decedent-Example1-TEST)
* name.text = "Decedent Dad"
* name.use = #official
* name.given = "John"
* name.family = "Smith"
* name.suffix = "Sr"


Instance: DecedentMother-Example1-TEST
InstanceOf: DecedentMother
Usage: #example
Description: "DecedentFather-Example1-TEST"
* insert AddMetaProfile(DecedentMother)
* patient = Reference(Decedent-Example1-TEST)
* name.text = "Decedent Mom"
* name.use = #maiden
* name.given = "Jane"
* name.family = "Suzette"

Instance: DecedentSpouse-Example1-TEST
InstanceOf: DecedentSpouse
Usage: #example
Description: "DecedentSpouse-Example1-TEST"
* insert AddMetaProfile(DecedentSpouse)
* patient = Reference(Decedent-Example1-TEST)
* name.text = "Decedent Spouse"
* name.use = #maiden
* name.given = "Samuel"
* name.family = "Gazette"
* name.suffix = "III"
