Instance: observation-parent-education-level-carmen-teresa-lee-common
InstanceOf: ObservationParentEducationLevelVitalRecords
Title: "Observation - Parent Education Level example [Carmen Teresa Lee]"
Description: "Example of Observation-parent-education-level-vr profile (Carmen Teresa Lee)"
Usage: #example
* status = #final
* code = $loinc#57712-2 "Highest level of education Mother"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named-common"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* focus
  * reference = "RelatedPerson/relatedperson-mother-gestational-carmen-teresa-lee-common"
  * display = "Patient - Mother (Carmen Teresa Lee)"
* valueCodeableConcept = $HL7_EducationLevelCS#SEC "Some secondary or high school education"
<<<<<<< HEAD
  * text = "Some secondary or high school education"
=======
  * text = "9th through 12th grade; no diploma"
>>>>>>> main
