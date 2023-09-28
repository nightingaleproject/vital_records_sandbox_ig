Instance: observation-fetal-death-time-point-not-named
InstanceOf: ObservationFetalDeathTimePoint
Title: "Observation - Observation Estimated Fetal Death Time Point - Fetus Not Named"
Description: "Observation - Observation Estimated Fetal Death Time Point: Fetus Not Named example"
Usage: #example
* status = #final
* code = $loinc#73811-2 "Estimated timing of fetal death [US Standard Report of Fetal Death]"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#434631000124100 "Fetal intrapartum death after first assessment (event)"