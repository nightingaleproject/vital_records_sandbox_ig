Instance: observation-mother-delivery-weight-jada-ann-quinn
InstanceOf: ObservationMotherDeliveryWeightVitalRecords
Title: "Observation - Mother Delivery Weight example [Jada Ann Quinn]"
Description: "Example of observation-mother-delivery-weight profile (Jada Ann Quinn)"
Usage: #example
* meta
  * versionId = "7"
  * lastUpdated = "2023-04-05T20:30:15.640+00:00"
  * source = "#MhsA8mBmpAQ7Fe7H"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#69461-2 "Mother's body weight --at delivery"
* subject = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
* effectiveDateTime = "2019-02-12"
* valueQuantity = 175 '[lb_av]'