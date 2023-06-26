Instance: relatedperson-father-natural-tom-yan-lee-common
InstanceOf: RelatedPersonFatherNaturalVitalRecords
Title: "RelatedPerson - Father Natural example [Tom Yan Lee]"
Description: "Example of Relatedperson-father-natural-vr (Tom Yan Lee)"
Usage: #example
* meta
  * versionId = "10"
  * lastUpdated = "2022-10-12T23:44:48.451+00:00"
  * source = "#2Fj2aXKtLXRSkizK"
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
  * valueAddress.state = "NY"
* active = true
* patient
  * reference = "Patient/patient-decedent-fetus-not-named-common"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* relationship = $v3-RoleCode#NFTH "natural father"
  * text = "Natural Father"
* name
  * use = #official
  * family = "Lee"
  * given[0] = "Tom"
  * given[+] = "Yan"
* gender = #male
* birthDate = "1984-02-27"