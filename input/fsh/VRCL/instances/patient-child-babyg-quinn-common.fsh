Instance: patient-child-babyg-quinn-common
InstanceOf: PatientChildVitalRecords
Title: "Patient - Child example [Baby G Quinn]"
Description: "Example of Patient-child-vr profile (Baby G Quinn)"
Usage: #example
* meta
  * versionId = "4"
  * lastUpdated = "2022-10-12T23:20:22.368+00:00"
  * source = "#cxlRqVvrSrzlzdK4"
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
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
  * valueCode = #F
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
  * valueAddress
    * city = "Salt Lake City"
    * district = "Salt Lake"
    * state = "UT"
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "9932702"
* name
  * family = "Quinn"
  * given[0] = "Baby"
  * given[+] = "G"
* gender = #female
* birthDate = "2019-02-12"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
    * valueDateTime = "2019-02-12T13:00:00-07:00"
* multipleBirthInteger = 1