Profile: ObservationSSNRequestedForChild
Parent: Observation
Id: Observation-ssn-requested-for-child
Title: "Observation - Social Security Number Requested For Child"
Description: "This Observation profile represents whether or not a social security number has been requested for the child. If a social security number was requested, set valueBoolean=true and enter the time requested in the effectiveDateTime data element."
* ^meta.versionId = "15"
* ^meta.lastUpdated = "2023-04-25T05:53:31.013+00:00"
* ^meta.source = "#wtpZFqhBOuVJFJ7h"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code 1..1 MS
* code = $loinc#87295-2
  * ^short = "Social Security Number was requested"
* subject 1.. MS
* subject only Reference(PatientChildVitalRecords)
* effective[x] 0..1 MS
* effective[x] only dateTime
  * ^short = "Date/time social security number requested"
* value[x] 1..1 MS
* value[x] only boolean
  * ^short = "Social security number requested for child?"