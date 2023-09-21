Instance: observation-paternity-acknowledgement-signed-james-quinn
InstanceOf: ObservationPaternityAcknowledgementSigned
Title: "Observation - Paternity Acknowledgement Signed - James Quinn"
Description: "Observation - Paternity Acknowledgement Signed: James Quinn example"
Usage: #example
* status = #final
* code = $loinc#87302-6 "Paternity acknowledgment form signed Father"
  * text = "Paternity acknowledgment form signed Father"
* subject
  * reference = "Patient/patient-child-babyg-quinn"
  * display = "Patient - Child (Baby G Quinn)"
* focus
  * reference = "RelatedPerson/relatedperson-father-natural-james-brandon-quinn"
  * display = "RelatedPerson - Father (James Brandon Quinn)"
* valueCodeableConcept = $v2-0532#Y "Yes"