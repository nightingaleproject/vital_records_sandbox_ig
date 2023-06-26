Extension: ExtensionDateTimeVitalRecords
Id: Extension-date-time-vr
Title: "Extension - Date Time Vital Records"
Description: "The time portion (DD) of the partial date."
* value[x] 1..
* value[x] only time
  * ^definition = "Specifies the time portion of a partial date."
* valueTime 1..1
  * extension contains $data-absent-reason named dataabsent 0..1