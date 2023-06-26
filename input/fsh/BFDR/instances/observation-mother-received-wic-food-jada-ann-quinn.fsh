Instance: observation-mother-received-wic-food-jada-ann-quinn
InstanceOf: ObservationMotherReceivedWICFood
Title: "Observation - Mother Received WIC Food example [Jada Ann Quinn]"
Description: "Example of Observation-mother-received-wic-food profile (Jada Ann Quinn)"
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2023-04-05T20:30:24.884+00:00"
  * source = "#kVYspnPv8TsKH9ZV"
* status = #final
* code = $loinc#87303-4 "Mother WIC food recipient"
  * text = "Did mother get WIC food for herself during this pregnancy?"
* subject
  * reference = "Patient/patient-child-babyg-quinn"
  * display = "BabyG Quinn"
* focus
  * reference = "Patient/patient-mother-jada-ann-quinn"
  * display = "Patient - Mother (Jada Ann Quinn)"
* valueCodeableConcept = $v2-0532#Y "Yes"