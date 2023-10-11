Extension: ExtensionDateMonthVitalRecords
Id: Extension-date-month-vr
Title: "Extension - Date Month - Vital Records"
Description: "This Extension profile represents the month portion (MM) of the partial date."
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2023-06-20T22:29:03.604Z"
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
  * ^minValueInteger = 1
  * ^maxValueInteger = 12
  * extension contains $data-absent-reason named dataabsent 0..1