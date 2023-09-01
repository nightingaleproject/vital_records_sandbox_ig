Profile: PatientChildVitalRecordsNew
Parent: PatientVitalRecordsNew
Id: Patient-child-vr-new
Title: "Patient - Child Vital Records"
Description: "The subject patient (newborn/infant/child) for whom clinical data is included in the report."
* extension[race] MS
* extension[ethnicity] MS
* extension[birthsex] 1.. MS
* extension[birthPlace] MS
* extension[birthPlace].valueAddress.district.extension[DistrictCode] MS 
* name MS
  * family 1.. MS
    * extension[dataAbsentReason] MS
  * given MS
    * extension[dataAbsentReason] MS
* birthDate.extension[datePartAbsentReason] MS 
* birthDate.extension[birthTime] MS 
* deceased[x] MS
  * ^short = "Indicates if the individual is deceased or not, dateTime is preferred"
* multipleBirth[x] MS
  * ^short = "If not single birth - born first, second, third, etc."
  * ^definition = "If not single birth, specify born 1st, 2nd, etc. – For multiple deliveries, the order this infant was delivered in the set. Include all live births and fetal losses."