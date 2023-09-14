Instance: patient-decedent-fetus-not-named-new
InstanceOf: PatientDecedentFetusNew
Title: "Patient - Decedent Fetus example [Fetus Not Named]"
Description: "Example of Patient-decedent-fetus-vr (Fetus Not Named)"
Usage: #example
* extension[USCoreBirthSexExtension]
  * valueCode = #F
* extension[birthPlace]
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