The profile includes a component for the time of death pronouncement that is not currently used for death certificate submission.

  The certificate signing date is passed via the [DeathCertification] profile.

  The death date specifies the date the death occurred, not the date the record was submitted.

  The pronouncer of death can be specified by reference to a USCore Practitioner instance from the 'performer' field.   This instance should be included in the [DeathCertificateDocument] and referenced from the [DeathCertificate].

  The method of date of death determination is not used for the Death Record submission process, and thus does not appear in the table below.  The binding
  to [DateOfDeathDeterminationMethodsVS] is included for compatibility with the Medicolegal Death Investigation ([MDI]) Implementation Guide.  The valueset only
includes the values used by MDI, but is bound [extensibly](http://hl7.org/fhir/R4/terminologies.html#extensible).  If a jurisdiction chooses to use this field, and requires additional values (e.g., 'presumed'), these values can be used
while remaining in full conformance with the VRDR IG.
### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 1 | Date of Death--Year | DOD_YR | value |dateTime |Required for processing |
| Mortality | 31 | Place of Death | DPLACE | component[placeOfDeath].value |codeable |[PlaceOfDeathVS] |
| Mortality | 34 | Date of Death--Month | DOD_MO | value |dateTime |See [PartialDatesAndTimes] |
| Mortality | 35 | Date of Death--Day | DOD_DY | value |dateTime |See [PartialDatesAndTimes] |
| Mortality | 36 | Time of Death | TOD | value |dateTime |See [PartialDatesAndTimes] |
| Mortality | 218 | Person Pronouncing Date Signed | PPDATESIGNED | component[datetimePronouncedDead ].valueDateTime |dateTime |See [PartialDatesAndTimes] |
| Mortality | 219 | Person Pronouncing Time Pronounced | PPTIME | component[datetimePronouncedDead].valueDateTime if a date is also specified, or component[datetimePronouncedDead].valueTime if no date is specified |dateTime or time |See [PartialDatesAndTimes] |
| Mortality Roster | 8 | Date of Death--Month | DOD_MO | value |dateTime |See [PartialDatesAndTimes] |
| Mortality Roster | 9 | Date of Death--Day | DOD_DY | value |dateTime |See [PartialDatesAndTimes] |
| Mortality Roster | 10 | Date of Death--Year | DOD_YR | value |dateTime |Required for processing |
{: .grid }