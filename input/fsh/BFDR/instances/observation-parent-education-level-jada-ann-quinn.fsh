Instance: observation-parent-education-level-jada-ann-quinn
InstanceOf: Observation
Title: "Observation - Parent Education Level - Jada Ann Quinn"
Description: "Observation - Parent Education Level: Jada Ann Quinn example"
Usage: #example
* meta
  * versionId = "8"
  * lastUpdated = "2023-07-07T01:18:09.890Z"
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-parent-education-level-vr"
* status = #final
* code = $loinc#57712-2 "Highest level of education Mother"
* subject = Reference(patient-child-babyg-quinn)
* focus = Reference(patient-mother-jada-ann-quinn)
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#PHC1455 "Doctorate Degree or Professional Degree"
  * text = "Doctorate Degree or Professional Degree"