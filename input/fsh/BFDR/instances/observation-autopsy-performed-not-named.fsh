Instance: observation-autopsy-performed-not-named
InstanceOf: ObservationAutopsyPerformedIndicatorVitalRecords
Title: "Observation - Autopsy Performed - Fetus Not Named"
Description: "Observation - Autopsy Performed: Fetus Not Named example"
Usage: #example
* status = #final
* code = $loinc#85699-7 "Autopsy was performed"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
//* valueCodeableConcept = $sct#716347009 "Autopsy performed (situation)"
* valueCodeableConcept = $v2-0136#Y "Yes"