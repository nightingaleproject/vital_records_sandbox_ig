Instance: BirthRecordIdentifier-Example1-TEST
InstanceOf: BirthRecordIdentifier
Usage: #example
Description: "BirthRecordIdentifier-Example1-TEST"
* insert AddMetaProfile(BirthRecordIdentifier)
* status = #final
* code = $v2-0203#BR "Birth registry number"
* subject = Reference(Decedent-Example1-TEST)
* valueString = "717171"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "1961"
