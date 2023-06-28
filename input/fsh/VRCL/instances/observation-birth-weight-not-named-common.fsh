Instance: observation-birth-weight-not-named-common
InstanceOf: ObservationBirthWeightVitalRecords
Title: "Observation - Birth Weight example [Fetus Not Named]"
Description: "Example of Observation-birth-weight-vr (Fetus Not Named)"
Usage: #example
* status = #final
* code = $loinc#8339-4 "Birth weight Measured"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named-common"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* effectiveDateTime = "2019-01-10"
* valueQuantity = 1530 'g'