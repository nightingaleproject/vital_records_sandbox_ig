Instance: observation-parent-education-level-jada-ann-quinn
InstanceOf: Observation
Title: "Observation - Parent Education Level - Jada Ann Quinn"
Description: "Observation - Parent Education Level: Jada Ann Quinn example"
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-parent-education-level-vr"
* status = #final
* code = $loinc#57712-2 "Highest level of education Mother"
* subject = Reference(patient-child-babyg-quinn)
* focus = Reference(patient-mother-jada-ann-quinn)
* valueCodeableConcept = $HL7_EducationLevelCS#POSTG "Doctoral or post graduate education"
  * text = "Doctoral or post graduate education"