Profile: DispositionLocation
Parent: LocationVitalRecords
Id: vrdr-disposition-location
Title: "Disposition Location"
Description: "Disposition Location (USCoreLocation)"
* insert RequireMetaProfile(DispositionLocation)
* name ^short = "Name of Disposition Location"
* address 1..1
* type = LocationTypeCS#disposition
* type 1..1