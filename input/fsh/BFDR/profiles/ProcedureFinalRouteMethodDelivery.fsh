Profile: ProcedureFinalRouteMethodDelivery
Parent: USCoreProcedureProfile
Id: Procedure-final-route-method-delivery
Title: "Procedure - Final Route and Method of Delivery"
Description: "This profile represents the final route and method of delivery."
* ^meta.versionId = "18"
* ^meta.lastUpdated = "2023-04-25T05:57:25.959+00:00"
* ^meta.source = "#P9Z8wIo2U0ZGr4mz"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code from PHVS_DeliveryRoutes_NCHS (required)
  * ^short = "The value set contains the list of the possible routes by which the infant or fetus may be delivered."
  * ^binding.description = "Delivery Routes (NCHS)"
* subject only Reference(PatientMotherVitalRecords)
* reasonReference only Reference(ObservationLaborTrialAttempted)
* reasonReference MS
  * ^short = "If cesarean, was a trial of labor attempted?"