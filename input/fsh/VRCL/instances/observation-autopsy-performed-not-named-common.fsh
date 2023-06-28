Instance: observation-autopsy-performed-not-named-common
InstanceOf: ObservationAutopsyPerformedIndicatorVitalRecords
Title: "Observation - Autopsy Performed example [Fetus Not Named]"
Description: "Example of Observation-autopsy-performed-vr profile (Fetus Not Named)"
Usage: #example
* status = #final
//* code = $loinc#73768-4 "Autopsy was performed [US Standard Report of Fetal Death]"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named-common"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#719828003 "Autopsy not done"