Instance: observation-birth-weight-not-named-w-edit
InstanceOf: ObservationBirthWeightNew
Title: "Observation - Birth Weight - Fetus Not Named"
Description: "Observation - Birth Weight: Fetus Not Named example"
Usage: #example

* status = #final
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* effectiveDateTime = "2019-02-10"
* performer = Reference(organization-jurisdictional-vital-records-office)
* valueQuantity = 1530 'g'
* valueQuantity.extension[bypassEditFlag].valueCodeableConcept = EditFlagsCS#off "Off"