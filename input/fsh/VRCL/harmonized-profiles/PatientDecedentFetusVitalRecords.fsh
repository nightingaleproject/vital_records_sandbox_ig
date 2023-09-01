Profile: PatientDecedentFetusVitalRecordsNew
Parent: PatientVitalRecordsNew
Id: Patient-decedent-fetus-vr-new
Title: "Patient - Decedent Fetus Vital Records"
Description: "A stillborn for whom clinical data is included in the report."
* extension[birthPlace] MS 
* name.family.extension[dataAbsentReason] MS 
* name.given.extension[dataAbsentReason] MS 
* name MS 
* birthDate.extension[birthTime] MS 
* birthDate ^short = "Date of delivery (fetus)"
* birthDate ^definition = "The fetus' date of delivery"
* deceased[x] 1.. MS
* deceased[x] only boolean
* deceased[x] = true (exactly)
  * ^short = "The fetus is deceased"
* multipleBirth[x] MS
  * ^short = "If not single birth, specify born 1st, 2nd, etc."
  * ^definition = "If not single birth, specify born 1st, 2nd, etc. – For multiple deliveries, the order this infant was delivered in the set. Include all live births and fetal losses."