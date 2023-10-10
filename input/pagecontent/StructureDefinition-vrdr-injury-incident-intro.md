### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 114 | Date of injury--month | DOI_MO | effective |dateTime |See [PartialDatesAndTimes] |
| Mortality | 115 | Date of injury--day | DOI_DY | effective |dateTime |See [PartialDatesAndTimes] |
| Mortality | 116 | Date of injury--year | DOI_YR | effective |dateTime |See [PartialDatesAndTimes] |
| Mortality | 117 | Time of injury | TOI_HR | effective |dateTime |See [PartialDatesAndTimes] |
| Mortality | 118 | Injury at work | WORKINJ | component[InjuryAtWork].value |codeable |[YesNoUnknownNotApplicableVS] |
| Mortality | 126 | Time of Injury Unit | TOI_UNIT | effective |implicit | |
| Mortality | 173 | Place of Injury- literal | POILITRL | component[ placeOfInjury ].value.text |string |- |
| Mortality | 174 | Describe How Injury Occurred | HOWINJ | value.text |string |- |
| Mortality | 175 | If Transportation Accident, Specify | TRANSPRT | component[ transportationRole ].value.  (if value.code = OTH) the role should be specified in value.text) |codeable |[TransportationIncidentRoleVS] |
{: .grid }
