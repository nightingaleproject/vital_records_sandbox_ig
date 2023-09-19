Profile: PatientChildVitalRecordsNew
Parent: PatientVitalRecordsNew
Id: Patient-child-vr-new
Title: "Patient - Child Vital Records"
Description: "The subject patient (newborn/infant/child) for whom clinical data is included in the report."
* extension[race] MS
* extension[ethnicity] MS
* extension[birthsex] 1.. MS
* extension[birthPlace] MS 
* identifier[MRN] MS
* insert childName 
* insert birthDateAndTime
* insert multipleBirths 
* deceased[x] MS
  * ^short = "Indicates if the individual is deceased or not, dateTime is preferred"

RuleSet: childName
* name MS
  * family 1.. MS
    * extension[dataAbsentReason] ^short = "When \"name not chosen\" use code \"temp-unknown\""
  * given MS
    * extension[dataAbsentReason] ^short = "When \"name not chosen\" use code \"temp-unknown\""

RuleSet: birthDateAndTime 
* birthDate 1..
  * extension[birthTime] MS 
  * extension[datePartAbsentReason] MS 

RuleSet: multipleBirths
* multipleBirth[x] MS
  * ^short = "If not single birth - born first, second, third, etc."
  * ^definition = "If not single birth, specify born 1st, 2nd, etc. – For multiple deliveries, the order this infant was delivered in the set. Include all live births and fetal losses."
