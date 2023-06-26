Extension: ExtensionLiveBirthCertificateNumber
Id: Extension-live-birth-certificate-number
Title: "Extension - Live Birth Certificate Number"
Description: "Live birth certificate number - this represents \"Birth Number\" on the US Standard Certificate of Live Birth."
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2023-04-25T06:01:07.845+00:00"
* ^meta.source = "#fkdOxjxAsFelXBkB"
* ^publisher = "Health Level Seven International"
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
  * type = $v2-0203#BCT