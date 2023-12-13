Instance: DeathLocation-Example1-TEST
InstanceOf: DeathLocation
Usage: #example
Description: "DeathLocation-Example1 - State = Jurisdiction-TEST"
* insert AddMetaProfile(DeathLocation)
* name = "Pecan Grove Nursing Home"
* description = "nursing home"
* address.city = "Albany"
* address.state = "NY"
* address.country = "US"
* position.latitude = 38.889248
* position.longitude = -77.050636

Instance: DeathLocation-Example2-TEST
InstanceOf: DeathLocation
Usage: #example
Description: "DeathLocation-Example2 - State != Jurisdiction-TEST"
* insert AddMetaProfile(DeathLocation)
* name = "Pecan Grove Nursing Home"
* description = "nursing home"
* address.city = "Queens"
* address.state = "NY"
* address.state.extension[nationalReportingJurisdictionId].valueString = "YC"
* address.country = "US"
//* position.latitude = 38.889248
//* position.longitude = -77.050636

Instance: DeathLocation-Example3-TEST
InstanceOf: DeathLocation
Usage: #example
Description: "DeathLocation-Example3 - Stripped Down for Mortality Roster-TEST"
* insert AddMetaProfile(DeathLocation)
* name = "Pecan Grove Nursing Home" // required by USCore
//* description = "nursing home"
//* address.city = "Albany"
* address.state = "NY"
* address.country = "US"
//* position.latitude = 38.889248
//* position.longitude = -77.050636
