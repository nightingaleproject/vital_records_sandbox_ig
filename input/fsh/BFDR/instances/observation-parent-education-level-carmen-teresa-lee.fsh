Instance: observation-parent-education-level-carmen-teresa-lee
InstanceOf: Observation
Title: "Observation - Parent Education Level - Carmen Teresa Lee"
Description: "Observation - Parent Education Level: Carmen Teresa Lee example"
Usage: #example
* status = #final
* code = $loinc#57712-2 "Highest level of education Mother"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* focus = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
* valueCodeableConcept = $HL7_EducationLevelCS#SEC "Some secondary or high school education"
  * text = "Some secondary or high school education"