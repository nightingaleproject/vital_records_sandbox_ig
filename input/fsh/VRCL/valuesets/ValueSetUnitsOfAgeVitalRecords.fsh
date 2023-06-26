ValueSet: ValueSetUnitsOfAgeVitalRecords
Id: ValueSet-units-of-age-vr
Title: "ValueSet - Units of Age Vital Records"
Description: "A set of codes for specifying the units used when recording age (days, years, etc.)."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2022-12-01T18:59:31.147+00:00"
* ^meta.source = "#ugv9S6K6WqXM6GTC"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-02-27T14:45:00+00:00"
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* $unitsofmeasure#min "Minutes"
* $unitsofmeasure#d "Days"
* $unitsofmeasure#h "Hours"
* $unitsofmeasure#mo "Months"
* $unitsofmeasure#a "Years"
* $v3-NullFlavor#UNK "unknown"