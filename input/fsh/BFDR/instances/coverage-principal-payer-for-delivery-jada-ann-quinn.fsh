Instance: coverage-principal-payer-for-delivery-jada-ann-quinn
InstanceOf: CoveragePrincipalPayerDelivery
Title: "Coverage - Principal Payer for Delivery - Jada Ann Quinn"
Description: "Coverage - Principal Payer for Delivery: Jada Ann Quinn example"
Usage: #example
* status = #active
* type = $sopt#5 "PRIVATE HEALTH INSURANCE"
  * text = "Private Health Insurance"
* beneficiary
  * reference = "Patient/patient-mother-jada-ann-quinn"
  * display = "Patient - Mother (Jada Ann Quinn)"
* payor
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
    * valueCode = #not-asked
  * display = "Not asked"