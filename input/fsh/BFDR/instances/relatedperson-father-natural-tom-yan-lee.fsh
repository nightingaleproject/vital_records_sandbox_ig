Instance: relatedperson-father-natural-tom-yan-lee
InstanceOf: RelatedPersonFatherNaturalVitalRecords
Title: "RelatedPerson - Father Natural example [Tom Yan Lee]"
Description: "Example of RelatedPerson-father-natural profile (Tom Yan Lee)"
Usage: #example
* meta
  * versionId = "9"
  * lastUpdated = "2023-04-05T20:33:56.435+00:00"
  * source = "#XCVoT9mnPRFBlqr0"
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
* patient = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* relationship = $v3-RoleCode#NFTH "natural father"
  * text = "Natural Father"
* name
  * use = #official
  * family = "Lee"
  * given[0] = "Tom"
  * given[+] = "Yan"
* gender = #male
* birthDate = "1984-02-27"