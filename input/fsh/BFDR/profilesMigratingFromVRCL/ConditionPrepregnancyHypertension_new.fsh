Profile: ConditionPrepregnancyHypertensionNew
Parent: USCoreConditionProblemsHealthConcernsProfile
Id: Condition-prepregnancy-hypertension-vr
Title: "Condition - Prepregnancy Hypertension Vital Records"
Description: "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy hypertension."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-04-06T23:18:38.804+00:00"
* ^meta.source = "#jyRrr9Fn0qrWrQTz"
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy hypertension."
* category = $condition-category#problem-list-item
* code = $sct#38341003
  * ^short = "Hypertensive disorder, systemic arterial (disorder)"
* subject only Reference(PatientMotherVitalRecordsNew)