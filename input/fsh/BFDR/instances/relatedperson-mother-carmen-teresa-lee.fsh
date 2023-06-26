Instance: relatedperson-mother-carmen-teresa-lee
InstanceOf: RelatedPersonMotherGestationalVitalRecords
Title: "RelatedPerson - Mother Gestational example [Carmen Teresa Lee]"
Description: "Example of Relatedperson-mother-gestational profile (Carmen Teresa Lee)"
Usage: #example
* meta
  * versionId = "10"
  * lastUpdated = "2023-04-05T20:33:56.436+00:00"
  * source = "#1LGSGXAG3h9XCQqb"
* extension[0]
  * extension[0]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2054-5 "Black or African American"
  * extension[+]
    * url = "text"
    * valueString = "Black or African America"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[+]
  * extension[0]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
  * extension[+]
    * url = "text"
    * valueString = "Hispanic or Latino"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* active = true
* patient = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* relationship = $v3-RoleCode#GESTM "gestational mother"
  * text = "Gestational Mother"
* name
  * use = #official
  * family = "Lee"
  * given[0] = "Carmen"
  * given[+] = "Teresa"
* gender = #female
* birthDate = "1986-02-15"