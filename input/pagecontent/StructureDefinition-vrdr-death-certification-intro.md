
  Note:
  * The DeathCertification.performed and DeathCertificateDocument.attester.time should both be set to the death certification time.
  * The DeathCertification.performer.actor is required by the [USCore Procedure Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-procedure.html),
  but is not required by the death record submission use case.

  The Death Certification profile includes:
### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 119 | Title of Certifier | CERTL | performer.function (note that if value is "OTH" then performed.function.text should contain 'Full Text for Other Individual Legally Allowed to Certify') |codeable |[CertifierTypesVS] |
| Mortality | 235 | Certifier Date Signed | CERTDATE | performed |dateTime |- |
{: .grid }
