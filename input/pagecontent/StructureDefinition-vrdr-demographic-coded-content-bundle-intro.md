  This bundle is information-content equivalent to the traditional NCHS MRE format.

  This bundle contains:
  * Coded Content:
    * Coded Race and Ethnicity [CodedRaceAndEthnicity]
  * Input Content:
    * Input Race and Ethnicity - [InputRaceAndEthnicity]
### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 3 | Certificate Number | FILENO | identifier.extension[ certificateNumber].value |string(6) |- |
| Mortality | 5 | Auxiliary State file number | AUXNO | identifier.extension[ auxiliaryStateIdentifier1 ].value |string(12) |- |
| Mortality | 121 | Auxiliary State file number | AUXNO2 | identifier.extension[ auxiliaryStateIdentifier2 ].value |string(12) |- |
| Mortality | NA | Death Record Identifier | *NO IJE MAPPING* | identifier.value |string(12) |YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number |
{: .grid }
