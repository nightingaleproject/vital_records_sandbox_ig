Instance: observation-mother-received-wic-food-jada-ann-quinn
InstanceOf: ObservationMotherReceivedWICFood
Title: "Observation - Mother Received WIC Food - Jada Ann Quinn"
Description: "Observation - Mother Received WIC Food: Jada Ann Quinn example"
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2023-04-06T00:30:24.884Z"
* status = #final
* code = $loinc#87303-4 "Mother WIC food recipient"
  * text = "Did mother get WIC food for herself during this pregnancy?"
* subject = Reference(patient-child-babyg-quinn) "BabyG Quinn"
* focus = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* valueCodeableConcept = $v2-0532#Y "Yes"