Profile: ObservationPreviousCesareanVitalRecords
Parent: Observation
Id: Observation-previous-cesarean-vr
Title: "Observation - Previous Cesarean Vital Records"
Description: "This profile indicates that the mother had a pregnancy risk factor of previous cesarean."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-04-05T06:52:27.458+00:00"
* ^meta.source = "#tBxBFaZde4seKcIH"
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
* value[x] = $sct#200144004
  * ^short = "Deliveries by cesarean (finding)"