Extension: ExtensionDatereceivedByRegistrar
Id: Extension-date-received-by-registrar
Title: "Extension - Date received by Registrar"
Description: "Date received by registrar."
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2023-04-25T06:00:47.264+00:00"
* ^meta.source = "#d90tcaJCSBiVrqVX"
* ^publisher = "HL7 Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "US Realm"
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] 1..1
* value[x] only dateTime