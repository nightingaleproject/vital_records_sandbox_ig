Extension: ExtensionDateYearVitalRecords
Id: Extension-date-year-vr
Title: "Extension - Date Year - Vital Records"
Description: "This Extension profile represents the year portion (YYYY) of the partial date."
* ^meta.versionId = "11"
* ^meta.lastUpdated = "2023-06-20T22:29:16.635Z"
* ^version = "1.0.0"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* value[x] 1..
* value[x] only unsignedInt
* valueUnsignedInt 1..1
  * ^maxValueInteger = 9998
  * extension contains $data-absent-reason named dataabsent 0..1