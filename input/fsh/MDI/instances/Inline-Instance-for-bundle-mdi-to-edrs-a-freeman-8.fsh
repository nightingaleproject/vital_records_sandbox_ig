Instance: Inline-Instance-for-bundle-mdi-to-edrs-a-freeman-8
InstanceOf: USCorePatientProfile
Usage: #inline
* id = "us-core-patient-a-freeman"
* meta
  * versionId = "13"
  * lastUpdated = "2022-08-03T03:25:47.196+00:00"
  * source = "#J3ecEOC1HZyqFkKq"
* extension[0]
  * extension[0]
    * url = "detailed"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2029-7 "Asian Indian"
  * extension[+]
    * url = "text"
    * valueString = "Asian Indian"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[+]
  * extension[0]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
  * extension[+]
    * url = "text"
    * valueString = "Not Hispanic or Latino"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* identifier
  * use = #usual
  * type = $v2-0203#SS "Social Security number"
    * text = "Social Security number"
  * system = "http://hospital.smarthealthit.org"
  * value = "987054321"
* active = true
* name
  * family = "Freeman"
  * given[0] = "Alice"
  * given[+] = "J."
* gender = #female
* birthDate = "1978-03-12"
* address
  * use = #home
  * line = "112 Miramar Ct"
  * city = "Danville"
  * state = "Nova Scotia"
  * country = "CA"