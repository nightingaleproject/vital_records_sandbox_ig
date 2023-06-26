Extension: ExtensionDateDayVitalRecords
Id: Extension-date-day-vr
Title: "Extension - Date Day Vital Records"
Description: "The day portion (DD) of the partial date."
* value[x] 1..
* value[x] only unsignedInt
  * ^definition = "Specifies the day portion of a partial date."
* valueUnsignedInt 1..1
  * ^minValueInteger = 1
  * ^maxValueInteger = 31
  * extension contains $data-absent-reason named dataabsent 0..1