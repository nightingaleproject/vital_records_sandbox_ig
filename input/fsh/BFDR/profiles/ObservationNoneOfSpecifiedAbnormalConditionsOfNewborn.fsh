Profile: ObservationNoneOfSpecifiedAbnormalConditionsOfNewborn
Parent: Observation
Id: Observation-none-of-specified-abnormal-conditions-of-newborn
Title: "Observation - None Of Specified Abnormal Conditions of Newborn"
Description: "This profile indicates that none of the specified abnormal conditions of the newborn were present."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-04-25T05:53:25.000+00:00"
* ^meta.source = "#FGpnT6hVSYMT2LfP"
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#73812-0
  * ^short = "Abnormal conditions of the newborn [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(PatientChildVitalRecords)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#260413007
  * ^short = "None"