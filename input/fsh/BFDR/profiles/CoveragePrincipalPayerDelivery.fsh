Profile: CoveragePrincipalPayerDelivery
Parent: Coverage
Id: Coverage-principal-payer-for-delivery
Title: "Coverage - Principal Payer for Delivery"
Description: "This Coverage profile represents the principal payer for this delivery."
* ^meta.versionId = "16"
* ^meta.lastUpdated = "2021-07-08T06:40:35.468+00:00"
* ^meta.source = "#bCUf3zIng8O7LQIh"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* type 1.. MS
* type from PHVS_BirthAndFetalDeathFinancialClass_NCHS (required)
  * ^short = "The value set contains the list of values used to indicate the principle source of payment for the labor and delivery."
  * ^binding.description = "Birth and Fetal Death Financial Class (NCHS)"
* payor.extension ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* payor.extension contains $data-absent-reason named dataAbsentReason 0..1 MS