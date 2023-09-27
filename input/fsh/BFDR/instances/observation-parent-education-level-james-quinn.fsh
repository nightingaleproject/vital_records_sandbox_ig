Instance: observation-parent-education-level-james-quinn
InstanceOf: Observation
Title: "Observation - Parent Education Level - James Quinn"
Description: "Observation - Parent Education Level: James Quinn example"
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-parent-education-level-vr"
* status = #final
* code = $loinc#87300-0 "Highest level of education Father"
* subject = Reference(patient-child-babyg-quinn)
* focus = Reference(relatedperson-father-natural-james-brandon-quinn)
* valueCodeableConcept = $HL7_EducationLevelCS#POSTG "Doctorate Degree or Professional Degree"
  * text = "Doctorate Degree or Professional Degree"