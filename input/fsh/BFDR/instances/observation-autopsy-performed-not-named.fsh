Instance: observation-autopsy-performed-not-named
InstanceOf: Observation
Title: "Observation - Autopsy Performed - Fetus Not Named"
Description: "Observation - Autopsy Performed: Fetus Not Named example"
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-autopsy-performed-indicator-vr"
* status = #final
* code = $loinc#85699-7 "Autopsy was performed"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* valueCodeableConcept = $sct#716347009 "Autopsy performed (situation)"