Instance: relatedperson-father-tony-lewis-common
InstanceOf: RelatedPersonFatherVitalRecords
Title: "RelatedPerson - Adoptive Father"
Description: "Example of RelatedPerson-father-vr profile (adoptive father)"
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2022-10-12T23:44:48.451+00:00"
  * source = "#NFXMtTGuThQOo4IY"
* extension[0]
  * extension[0]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
  * extension[+]
    * url = "text"
    * valueString = "White"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[+]
  * extension[0]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
  * extension[+]
    * url = "text"
    * valueString = "Not Hispanic or Latino"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[+]
  * url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-relatedperson-birthplace-vr"
  * valueAddress.state = "VT"
* active = true
* patient
  * reference = "Patient/patient-child-babyg-quinn-common"
  * display = "Patient - Child (Baby G Quinn)"
* relationship = $v3-RoleCode#ADOPTF "adoptive father"
  * text = "Adoptive Father"
* name
  * use = #official
  * family = "Lewis"
  * given = "Tony"
* gender = #male
* birthDate = "1982-01-23"