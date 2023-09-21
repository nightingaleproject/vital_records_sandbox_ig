Instance: patient-child-babyg-quinn-new
InstanceOf: PatientChildNew
Title: "Patient - Child example [Baby G Quinn]"
Description: "Example of Patient-child-vr profile (Baby G Quinn)"
Usage: #example
* extension[USCoreRaceExtension]
  * extension[ombCategory]
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
  * extension[text]
    * valueString = "White"
* extension[USCoreEthnicityExtension]
  * extension[ombCategory]
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
  * extension[text]
    * valueString = "Not Hispanic or Latino"
* extension[USCoreBirthSexExtension]
  * valueCode = #F
* extension[birthPlace]
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