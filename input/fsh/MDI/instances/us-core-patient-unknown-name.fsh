Instance: us-core-patient-unknown-name
InstanceOf: USCorePatientProfile
Title: "US Core Patient - Unknown Name"
Description: "US Core Patient: Unknown Name - Decedent where there is no information known about the patient. Assume that the system will assign a tracking number (e.g., medical record number, case number, or other)."
Usage: #example
* meta
  * versionId = "3"
  * lastUpdated = "2022-08-16T00:48:48.046+00:00"
  * source = "#M96qCs8z4WVse4Xg"
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