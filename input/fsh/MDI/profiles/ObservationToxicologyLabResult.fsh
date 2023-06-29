Profile: ObservationToxicologyLabResult
Parent: USCoreLaboratoryResultObservationProfile
Id: Observation-toxicology-lab-result
Title: "Observation - Toxicology Lab Result"
Description: "This Observation profile describes forensic toxicology laboratory test results from analysis of a specimen sent by a Medical Examiner, Coroner, or autopsy performer to the laboratory."
* ^meta.versionId = "19"
* ^meta.lastUpdated = "2022-08-03T04:17:19.660+00:00"
* ^meta.source = "#PJD2NxPORHWaFEzp"
* ^version = "1.0.0-Pre-Publication-Review"
* ^date = "2022-07-22T22:25:31+00:00"
* ^publisher = "HL7 Public Health Work Group (http://www.hl7.org/Special/committees/pher/index.cfm)"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* code
  * coding MS
  * text 1.. MS
* value[x] ..1 MS
* value[x] only string
* note MS
* specimen only Reference(SpecimenToxicologyLab)
* specimen MS