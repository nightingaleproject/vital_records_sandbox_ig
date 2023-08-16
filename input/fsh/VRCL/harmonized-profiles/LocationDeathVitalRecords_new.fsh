/*Created this common profile for death location, consistent with new common injury location profile*/
Profile: LocationDeathVitalRecordsNew
Parent: USCoreLocation
Id: Location-death-vr-new
Title: "Location - Death Vital Records"
Description: "This Location records the location of death. It is based on US Core Location and further constrains the type element to indicate that this is the location of death."
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* type 1..1 
* type = CodeSystemLocationTypeVitalRecordsNew#death //uses new common codesystem
  * ^short = "Death location"
* address.state from StatesTerritoriesAndProvincesVS (required) 
* insert CityCode 
* insert CountyCode
* position ^label = "Location of injury lat/long"
  * ^short = "Location of injury lat/long"
  * ^definition = "Location of injury lat/long"
