Extension: ExtensionDateDayVitalRecords
Id: Extension-date-day-vr
Title: "Extension - Date Day - Vital Records"
Description: "This Extension profile represents the day portion (DD) of the partial date."
* ^meta.versionId = "17"
* ^meta.lastUpdated = "2023-06-20T22:28:57.798Z"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* value[x] 1..
* value[x] only unsignedInt
  * ^definition = "Specifies the day portion of a partial date."
* valueUnsignedInt 1..1
  * ^minValueInteger = 1
  * ^maxValueInteger = 31
  * extension contains $data-absent-reason named dataabsent 0..1