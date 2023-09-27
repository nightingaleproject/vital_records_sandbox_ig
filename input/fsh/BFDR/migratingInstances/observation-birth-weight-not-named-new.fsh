Instance: observation-birth-weight-not-named
InstanceOf: ObservationBirthWeightNew
Title: "Observation - Birth Weight - Fetus Not Named"
Description: "Observation - Birth Weight: Fetus Not Named example"
Usage: #example
// * meta
  //should have a meta.profile
* status = #final
* subject = Reference(patient-decedent-fetus-not-named-new) "Patient - Decedent Fetus (Fetus Not Named)"
* effectiveDateTime = "2019-02-10"
* valueQuantity = 1530 'g'