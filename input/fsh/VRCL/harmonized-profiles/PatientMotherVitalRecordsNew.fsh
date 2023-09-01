Profile: PatientMotherVitalRecordsNew
Parent: PatientVitalRecordsNew
Id: Patient-mother-vr-new
Title: "Patient - Mother Vital Records"
Description: "This Patient profile represents the woman who gave birth to, or delivered the infant."
// * extension[race] 1..
//   * ^short = "If race is unknown, use UNK from the bound value set."
// * extension[ethnicity] 1..
//   * ^short = "If ethnicity is unknown omit both coded data fields."
* extension[birthPlace] MS
* identifier[MRN] MS 
* identifier[SSN] MS 
* name[currentLegalName] MS 
* name[namePriorToFirstMarriage] MS 
* birthDate.extension[datePartAbsentReason] MS 
* deceased[x] MS
  * ^short = "Indicates if the individual is deceased or not, dateTime is preferred"
* address.extension[withinCityLimitsIndicator] MS 
* link MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.description = "Slice based on link type"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
* link contains mother 0..1 MS
* link[mother] ^short = "Link to the birth mother's RelatedPerson record"
  * other only Reference(RelatedPersonMotherVitalRecords)
  * other MS
    * ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
    * ^type.extension.valueBoolean = false
  * type = #seealso
  * type MS