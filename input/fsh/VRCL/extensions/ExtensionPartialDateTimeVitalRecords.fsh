Extension: ExtensionPartialDateTimeVitalRecords
Id: Extension-partial-date-time-vr
Title: "Extension - Partial DateTime Vital Records"
Description: "Provides values of a partial dateTime"
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* . ^short = "Partial Date Time"
  * ^definition = "Provides a partial date time."
* extension contains
    $Extension-date-year named year 1..1 and
    $Extension-date-month named month 1..1 and
    $Extension-date-day named day 1..1 and
    $Extension-date-time named time 1..1
* extension[year] ^short = "Date Year"
  * ^definition = "The year portion (YYYY) of the partial date."
* extension[month] ^short = "Date Month"
  * ^definition = "The day portion (MM) of the partial date."
* extension[day] ^short = "Date Day"
  * ^definition = "The day portion (DD) of the partial date."
* extension[time] ^short = "Date Time"
  * ^definition = "The time portion  of the partial datetime."