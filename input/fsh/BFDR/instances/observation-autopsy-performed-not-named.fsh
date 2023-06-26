Instance: observation-autopsy-performed-not-named
InstanceOf: ObservationAutopsyPerformedIndicatorVitalRecords
Title: "Observation - Autopsy Performed example [Fetus Not Named]"
Description: "Example of Observation-autopsy-performed profile (Fetus Not Named)"
Usage: #example
* meta
  * versionId = "7"
  * lastUpdated = "2023-04-19T00:50:21.955+00:00"
  * source = "#L2DDqZ85BxSLVv4F"
* status = #final
* code = $loinc#85699-7 "Autopsy was performed"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $v2-0136#N "No"