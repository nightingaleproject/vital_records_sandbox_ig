Instance: us-core-patient-vr-unknown-name
InstanceOf: USCorePatientProfile
Description: "Example "
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2022-12-08T18:35:37.423+00:00"
  * source = "#HmlBbdXmgA4JbgeH"
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
    * text = "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "MR303303305"
* active = true
* name.family = "UNK"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
    * valueCode = #unknown
* gender = #unknown