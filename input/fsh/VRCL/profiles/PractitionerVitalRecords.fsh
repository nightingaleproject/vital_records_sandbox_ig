Profile: PractitionerVitalRecords
Parent: USCorePractitionerProfile
Id: Practitioner-vr
Title: "Practitioner - Vital Records"
Description: "This Practitioner profile represents a practitioner who is involved in vital records (births, fetal death, death, etc.) as a certifier or an attendant. This profile is based on the US Core Practitioner and adds a further constraint to capture the title of the practitioner."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-25T15:51:11.599+00:00"
* ^meta.source = "#zrB5cWTCPpGkm4ut"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "US Realm"
* qualification 0..1 MS
* qualification only BackboneElement
  * code 1..1
  * code from PHVS_BirthAttendantTitles_NCHS (required)
    * ^short = "List of titles"
    * ^binding.description = "Live Birth/Fetal Death Practitioner title"