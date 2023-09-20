Instance: observation-edit-flag-mothers-dob-not-named
InstanceOf: ObservationEditFlagMothersDateOfBirth
Title: "Observation - Edit Flag Mother's Date of Birth - Fetus Not Named"
Description: "Observation - Edit Flag Mother's Date of Birth: Fetus Not Named example"
Usage: #example
* status = #final
* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1482 "Mothers birthdate Edit flag"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Decedent Fetus Not Named"
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#PHC1362 "Edit Passed"