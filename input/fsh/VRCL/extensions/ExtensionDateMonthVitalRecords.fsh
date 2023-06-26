Extension: ExtensionDateMonthVitalRecords
Id: Extension-date-month-vr
Title: "Extension - Date Month Vital Records"
Description: "The month portion (MM) of the partial date."
* value[x] 1..
* value[x] only unsignedInt
* valueUnsignedInt 1..1
  * ^minValueInteger = 1
  * ^maxValueInteger = 12
  * extension contains $data-absent-reason named dataabsent 0..1