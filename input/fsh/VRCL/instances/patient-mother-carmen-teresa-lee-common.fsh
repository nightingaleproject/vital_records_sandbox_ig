Instance: patient-mother-carmen-teresa-lee-common
InstanceOf: PatientMotherVitalRecords
Title: "Patient - Mother example [Carmen Teresa Lee]"
Description: "Example of Patient-mother-vr profile (Carmen Teresa Lee)"
Usage: #example
* meta
  * versionId = "5"
  * lastUpdated = "2022-10-12T23:47:00.204+00:00"
  * source = "#zy0leZXVNEKsb4C1"
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
* extension[+]
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
  * valueCode = #F
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
  * valueAddress.state = "PR"
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "9992702"
* name[0]
  * use = #official
  * family = "Lee"
  * given[0] = "Carmen"
  * given[+] = "Teresa"
* name[+]
  * use = #maiden
  * family = "Santos"
  * given[0] = "Carmen"
  * given[+] = "Teresa"
* gender = #female
* birthDate = "1986-02-15"
* address
  * extension
    * url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-within-city-limits-indicator-vr"
    * valueCoding = $v2-0532#N "No"
  * use = #home
  * line = "3670 Miller Road"
  * city = "Ann Arbor"
  * state = "MI"
  * postalCode = "48103"
  * country = "US"