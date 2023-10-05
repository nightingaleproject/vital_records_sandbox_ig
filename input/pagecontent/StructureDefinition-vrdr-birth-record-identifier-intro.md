The BirthRecordIdentifier captures the key identifiers for the Decedent's birth record. It is relevant only in the case where the birth took place in a recognized jurisdiction.
### IJE Mapping

| **Use Case** |  **IJE Field#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 88 | Infant Death/Birth Linking - birth certificate number | BCNO | value |string(6) |- |
| Mortality | 89 | Infant Death/Birth Linking - year of birth | IDOB_YR | component[birthYear].value |dateTime |YYYY component |
| Mortality | 90 | Infant Death/Birth Linking - State, U.S. Territory or Canadian Province of Birth - code | BSTATE | component[birthJurisdiction].value |string |[JurisdictionsProvincesVS] |
{: .grid }
