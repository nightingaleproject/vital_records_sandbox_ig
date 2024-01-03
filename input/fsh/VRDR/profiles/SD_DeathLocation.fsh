Profile: DeathLocation
Parent: LocationVitalRecords
Id: vrdr-death-location
Title: "Death Location"
Description: "Death Location (USCoreLocation)"
* insert RequireMetaProfile(DeathLocation)
// * name 1..1
// * description 1..1
* type = LocationTypeCS#death
* type 1..1
* name ^short = "Name of Death Location"
* address ^short = "Place of Death address"
* address.city ^short = "Address city"
* address.state ^short = "Address state"
* address.district ^short = "Address county"
* address.country ^short = "Address country"
* address.postalCode ^short = "Address zip"
* address.line ^short = "Address text"
* address.state ^short = "State/Jurisdiction of death.  Use value in Jurisdiction if present."
* position ^short = "Place of death lat/long" // LONG_D and LAT_D