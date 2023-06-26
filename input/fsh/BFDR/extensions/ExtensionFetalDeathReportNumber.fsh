Extension: ExtensionFetalDeathReportNumber
Id: Extension-fetal-death-report-number
Title: "Extension - Fetal Death Report Number"
Description: "Fetal death report number - this represents \"State File Number\" on the US Standard Report of Fetal Death."
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2023-04-25T06:01:07.580+00:00"
* ^meta.source = "#DqDHP1NqvHJeVHXs"
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "US Realm"
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] 1..1
* value[x] only Identifier
  * type 1.. MS
  * type = $v2-0203#FDR