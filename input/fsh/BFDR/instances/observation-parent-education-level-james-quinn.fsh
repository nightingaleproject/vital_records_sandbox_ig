Instance: observation-parent-education-level-james-quinn
InstanceOf: Observation
Title: "Observation - Parent Education Level - James Quinn"
Description: "Observation - Parent Education Level: James Quinn example"
Usage: #example
* meta
  * versionId = "8"
  * lastUpdated = "2023-04-06T00:30:57.414Z"
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-parent-education-level-vr"
* status = #final
* code = $loinc#87300-0 "Highest level of education Father"
* subject = Reference(patient-child-babyg-quinn)
* focus = Reference(relatedperson-father-natural-james-brandon-quinn)
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#PHC1455 "Doctorate Degree or Professional Degree"
  * text = "Doctorate Degree or Professional Degree"