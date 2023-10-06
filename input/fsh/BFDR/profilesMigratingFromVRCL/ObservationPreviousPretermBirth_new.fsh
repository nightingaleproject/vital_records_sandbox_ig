Profile: ObservationPreviousPretermBirthNew
Parent: Observation
Title: "Observation - Previous Preterm Birth Vital Records"
Description: "This Observation profile indicates that the mother had a pregnancy risk factor of previous preterm birth."
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2023-04-05T07:09:47.384+00:00"
* ^meta.source = "#ZuHh9hgeAXW6Wr5i"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = $loinc#73775-9
  * ^short = "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(PatientMotherVitalRecordsNew)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#161765003
  * ^short = "History of premature delivery (situation)"