Instance: observation-parent-education-level-carmen-teresa-lee
InstanceOf: Observation
Title: "Observation - Parent Education Level - Carmen Teresa Lee"
Description: "Observation - Parent Education Level: Carmen Teresa Lee example"
Usage: #example
* meta
  * versionId = "8"
  * lastUpdated = "2023-07-07T01:18:10.387Z"
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-parent-education-level-vr"
* status = #final
* code = $loinc#57712-2 "Highest level of education Mother"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* focus = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#PHC1449 "9th through 12th grade; no diploma"
  * text = "9th through 12th grade; no diploma"