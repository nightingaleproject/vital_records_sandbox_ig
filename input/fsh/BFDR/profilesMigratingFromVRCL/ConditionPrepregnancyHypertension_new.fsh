Profile: ConditionPrepregnancyHypertensionNew
Parent: USCoreConditionProblemsHealthConcernsProfile
Title: "Condition - Prepregnancy Hypertension Vital Records"
Description: "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy hypertension."
// * ^contact.name = "HL7 Public Health Working Group"
// * ^contact.telecom[0].system = #url
// * ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
// * ^contact.telecom[+].system = #email
// * ^contact.telecom[=].value = "pher@lists.HL7.org"
// * ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
// * . ^short = "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy hypertension."
* category = $condition-category#problem-list-item
* code = $sct#38341003
  * ^short = "Hypertensive disorder, systemic arterial (disorder)"
* subject only Reference(PatientMotherVitalRecordsNew)