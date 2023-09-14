Instance: observation-infant-living-babyg-quinn-new
InstanceOf: ObservationInfantLivingNew
Title: "Observation - Infant Living - Baby G Quinn"
Description: "Observation - Infant Living: BabyG Quinn example"
Usage: #example
* meta
  * versionId = "4"
  * lastUpdated = "2023-04-06T00:30:04.882Z"
  //* profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-infant-living-vr"
* status = #final
* code = $loinc#73757-7 "Infant living at time of report [US Standard Certificate of Live Birth]"
* subject = Reference(patient-child-babyg-quinn-new) "BabyG Quinn"
* valueBoolean = true