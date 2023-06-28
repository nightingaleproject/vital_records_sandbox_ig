Extension: ExtensionTrackingNumber
Id: Extension-tracking-number
Title: "Extension - Tracking Number"
Description: "This Extension contains a tracking number, such as a case number or file number assigned by an MDI information management system or EDRS, and can represent other tracking numbers, if required."
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2023-04-14T19:33:20.488+00:00"
* ^meta.source = "#zfpDekrt73bMNEUX"
* ^version = "1.0.0"
* ^date = "2022-08-25"
* ^publisher = "Health Level Seven International"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "US Realm"
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* . 0..*
  * ^short = "Tracking Numbers Extension"
  * ^definition = "Contains multiple tracking numbers, such as a case number or file number assigned by a case management system or EDRS, and can represent other tracking numbers, if required."
* url MS
* value[x] only Identifier
* value[x] MS
  * ^short = "Value of extension"
  * type MS
  * type from ValueSetTrackingNumberType (extensible)
    * ^short = "Tracking Number Type (extensible value set)"
  * system MS
  * value MS