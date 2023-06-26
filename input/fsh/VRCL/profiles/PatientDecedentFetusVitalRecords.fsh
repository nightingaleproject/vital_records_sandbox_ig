Profile: PatientDecedentFetusVitalRecords
Parent: USCorePatientProfile
Id: Patient-decedent-fetus-vr
Title: "Patient - Decedent Fetus Vital Records"
Description: "A stillborn for whom clinical data is included in the report."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-12T22:13:36.031+00:00"
* ^meta.source = "#T50QfWdwytwHHqjZ"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* extension contains $patient-birthPlace named birthPlace 0..1 MS
* extension[birthPlace] ^short = "Place of Birth for the patient should include the state and/or country"
* name MS
  * family 1..
    * ^short = "When child not named use code \"unknown\""
    * extension ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "url"
      * ^slicing.rules = #open
    * extension contains $data-absent-reason named dataAbsentReason 0..1 MS
  * given ^short = "When child not named use code \"unknown\""
    * extension ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "url"
      * ^slicing.rules = #open
    * extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* birthDate 1..
  * ^short = "Date of delivery (fetus)"
  * ^definition = "The fetus' date of delivery"
  * extension contains $patient-birthTime named birthTime 0..1 MS
* deceased[x] 1.. MS
* deceased[x] only boolean
* deceased[x] = true (exactly)
  * ^short = "The fetus is deceased"
* multipleBirth[x] MS
  * ^short = "If not single birth, specify born 1st, 2nd, etc."
  * ^definition = "If not single birth, specify born 1st, 2nd, etc. – For multiple deliveries, the order this infant was delivered in the set. Include all live births and fetal losses."