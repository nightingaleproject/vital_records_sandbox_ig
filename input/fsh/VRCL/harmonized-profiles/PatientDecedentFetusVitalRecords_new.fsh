Profile: PatientDecedentFetusVitalRecordsNew
Parent: PatientVitalRecordsNew
Id: Patient-decedent-fetus-vr-new
Title: "Patient - Decedent Fetus Vital Records"
Description: "A stillborn for whom clinical data is included in the report."
* extension[birthPlace] MS
* insert childName 
* insert birthDateAndTime 
* deceased[x] 1.. MS
* deceased[x] only boolean
* deceased[x] = true (exactly)
  * ^short = "The fetus is deceased"
* insert multipleBirths