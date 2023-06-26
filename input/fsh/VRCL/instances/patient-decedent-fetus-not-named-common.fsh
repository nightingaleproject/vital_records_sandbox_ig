Instance: patient-decedent-fetus-not-named-common
InstanceOf: PatientDecedentFetusVitalRecords
Title: "Patient - Decedent Fetus example [Fetus Not Named]"
Description: "Example of Patient-decedent-fetus-vr (Fetus Not Named)"
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2022-10-12T23:20:22.366+00:00"
  * source = "#jxOVgdPtoiw6goDY"
* extension[0]
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
  * valueCode = #F
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
  * valueAddress
    * city = "Ann Arbor"
    * state = "MI"
    * postalCode = "48103"
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "9932702"
* name.family = "UNK"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
    * valueCode = #not-applicable
* gender = #female
* birthDate = "2019-01-09"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
    * valueDateTime = "2019-01-09T18:23:00-07:00"
* deceasedBoolean = true