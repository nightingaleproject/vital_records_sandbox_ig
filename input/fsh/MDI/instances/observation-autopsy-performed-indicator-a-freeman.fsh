Instance: observation-autopsy-performed-indicator-a-freeman
InstanceOf: ObservationAutopsyPerformedIndicatorVitalRecords
Title: "Observation - Autopsy Performed Indicator - Freeman"
Description: "Observation - Autopsy Performed Indicator: Freeman example"
Usage: #example
* status = #final
* code = $loinc#85699-7
* subject.reference = "Patient/us-core-patient-a-freeman"
* valueCodeableConcept = $v2-0136#Y "Yes"
* component
  * code = $loinc#69436-4
  * valueCodeableConcept = $v2-0136#Y "Yes"