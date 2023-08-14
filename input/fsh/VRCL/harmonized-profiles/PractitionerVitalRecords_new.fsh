Profile: PractitionerVitalRecordsNew
Parent: USCorePractitionerProfile
Id: Practitioner-vr-new
Title: "Practitioner - Vital Records"
Description: "This Practitioner profile represents a practitioner who is involved in vital records (births, fetal death, death, etc.) as a certifier or an attendant. This profile is based on the US Core Practitioner and adds a further constraint to capture the title of the practitioner."
* insert RequireMetaProfile(Profile: PractitionerVitalRecordsNew)
* qualification 0..1
* qualification 
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* qualification contains birthAttendantQualification 0..1
* qualification[birthAttendantQualification].code from PHVS_BirthAttendantTitles_NCHS (required)
* qualification[birthAttendantQualification].code ^short = "List of titles"
* qualification[birthAttendantQualification].code ^binding.description = "Live Birth/Fetal Death Practitioner title"
* name 1..1
* name ^short = "name"
* address ^short = "address"
* address.city ^short = "city"
* address.district ^short = "county"
* address.postalCode ^short = "zip"
* insert CityCode
* insert CountyCode
* insert AddressComponents
* address.country from ResidenceCountryVS (required)
* address.state from StatesTerritoriesAndProvincesVS (required)