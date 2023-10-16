Extension: ExtensionPartialDateVitalRecords
Id: Extension-partial-date-vr
Title: "Extension - Partial Date - Vital Records"
Description: "This Extension profile represents values of a partial date."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2023-06-20T22:31:38.788Z"
* ^version = "2.2.0-cibuild"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* . ^short = "Partial Date"
  * ^definition = "Provides a partial date."
* extension contains
    ExtensionDateYearVitalRecords named year 1..1 and
    ExtensionDateMonthVitalRecords named month 1..1 and
    ExtensionDateDayVitalRecords named day 1..1
* extension[year] ^short = "Date Year"
  * ^definition = "The year portion (YYYY) of the partial date."
* extension[month] ^short = "Date Month"
  * ^definition = "The day portion (MM) of the partial date."
* extension[day] ^short = "Date Day"
  * ^definition = "The day portion (DD) of the partial date."