/*All variations use type = injury --> created new Common codesystem to consolidate

VRDR Injury Location has:
 - extensions for city and county codes
 - valueset for States/Territories/Proviinces bound to address.state

VRDR has no MS flags. MDI and VRCL have the same MS flags.
*/
Profile: LocationInjuryVitalRecordsNew
Parent: USCoreLocation
Id: Location-injury-vr-new
Title: "Location - Injury Vital Records"
Description: "This Location records the location of an injury. It is based on US Core Location and further constrains the type element to indicate that this is the location of an injury.
This profile is designed to supplant the similar profiles in VRDR and MDI."
* type 1..1 
* type = CodeSystemLocationTypeVitalRecordsNew#injury //consolidate to same codesystem in Common Library. VRDR uses LocationTypeCS#injury
  * ^short = "Injury location"
//* address.text //VRDR does not have text, rather extensions for city, district, and state binding
* address.state from StatesTerritoriesAndProvincesVS (required) //I included the state binding and city and county codes, but not sure if that's right thing to do
* insert CityCode 
* insert CountyCode
* position ^label = "Location of injury lat/long"
  * ^short = "Location of injury lat/long"
  * ^definition = "Location of injury lat/long"