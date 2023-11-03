It contains data that are a coded form of the race and ethnicity data that has been submitted to the the national statistics agency.

Two sets of codes will be used to address two objectives. These objectives are:
* to generate codes for race or ethnicity data provided as text entries
* to generate a single race code in cases where multiple races have been reported

In addition, when the coding process has led to duplication of data, the duplicates will be eliminated. 

Coded race and ethnicity data is communicated for both the mother and father in the case of live birth and only for the mother in the case of fetal death.
### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 62 | Mother's Race Tabulation Variable 1E | MRACE1E | component[FirstEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 63 | Mother's Race Tabulation Variable 2E | MRACE2E | component[SecondEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 64 | Mother's Race Tabulation Variable 3E | MRACE3E | component[ThirdEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 65 | Mother's Race Tabulation Variable 4E | MRACE4E | component[FourthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 66 | Mother's Race Tabulation Variable 5E | MRACE5E | component[FifthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 67 | Mother's Race Tabulation Variable 6E | MRACE6E | component[SixthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 68 | Mother's Race Tabulation Variable 7E | MRACE7E | component[SeventhEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 69 | Mother's Race Tabulation Variable 8E | MRACE8E | component[EighthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 70 | Mother's Race Tabulation Variable 16C | MRACE16C | component[FirstAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 71 | Mother's Race Tabulation Variable 17C | MRACE17C | component[SecondAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 72 | Mother's Race Tabulation Variable 18C | MRACE18C | component[FirstOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 73 | Mother's Race Tabulation Variable 19C | MRACE19C | component[SecondOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 74 | Mother's Race Tabulation Variable 20C | MRACE20C | component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 75 | Mother's Race Tabulation Variable 21C | MRACE21C | component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 76 | Mother's Race Tabulation Variable 22C | MRACE22C | component[FirstOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 77 | Mother's Race Tabulation Variable 23C | MRACE23C | component[SecondOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 108 | Father's Race Tabulation Variable 1E | FRACE1E | component[FirstEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 109 | Father's Race Tabulation Variable 2E | FRACE2E | component[SecondEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 110 | Father's Race Tabulation Variable 3E | FRACE3E | component[ThirdEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 111 | Father's Race Tabulation Variable 4E | FRACE4E | component[FourthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 112 | Father's Race Tabulation Variable 5E | FRACE5E | component[FifthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 113 | Father's Race Tabulation Variable 6E | FRACE6E | component[SixthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 114 | Father's Race Tabulation Variable 7E | FRACE7E | component[SeventhEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 115 | Father's Race Tabulation Variable 8E | FRACE8E | component[EighthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 116 | Father's Race Tabulation Variable 16C | FRACE16C | component[FirstAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 117 | Father's Race Tabulation Variable 17C | FRACE17C | component[SecondAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 118 | Father's Race Tabulation Variable 18C | FRACE18C | component[FirstOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 119 | Father's Race Tabulation Variable 19C | FRACE19C | component[SecondOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 120 | Father's Race Tabulation Variable 20C | FRACE20C | component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 121 | Father's Race Tabulation Variable 21C | FRACE21C | component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 122 | Father's Race Tabulation Variable 22C | FRACE22C | component[FirstOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 123 | Father's Race Tabulation Variable 23C | FRACE23C | component[SecondOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Natality | 292 | Mother's Hispanic Code for Literal | METHNIC5C | component[HispanicCodeForLiteral].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetHispanicOriginVitalRecords] |
| Natality | 293 | Mother's Edited Hispanic Origin Code | METHNICE | component[HispanicCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetHispanicOriginVitalRecords] |
| Natality | 295 | Father's Hispanic Code for Literal | FETHNIC5C | component[HispanicCodeForLiteral].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetHispanicOriginVitalRecords] |
| Natality | 296 | Father's Edited Hispanic Origin Code | FETHNICE | component[HispanicCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetHispanicOriginVitalRecords] |
| Fetal Death | 62 | Mother's Race Tabulation Variable 1E | MRACE1E | component[FirstEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 63 | Mother's Race Tabulation Variable 2E | MRACE2E | component[SecondEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 64 | Mother's Race Tabulation Variable 3E | MRACE3E | component[ThirdEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 65 | Mother's Race Tabulation Variable 4E | MRACE4E | component[FourthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 66 | Mother's Race Tabulation Variable 5E | MRACE5E | component[FifthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 67 | Mother's Race Tabulation Variable 6E | MRACE6E | component[SixthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 68 | Mother's Race Tabulation Variable 7E | MRACE7E | component[SeventhEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 69 | Mother's Race Tabulation Variable 8E | MRACE8E | component[EighthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 70 | Mother's Race Tabulation Variable 16C | MRACE16C | component[FirstAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 71 | Mother's Race Tabulation Variable 17C | MRACE17C | component[SecondAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 72 | Mother's Race Tabulation Variable 18C | MRACE18C | component[FirstOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 73 | Mother's Race Tabulation Variable 19C | MRACE19C | component[SecondOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 74 | Mother's Race Tabulation Variable 20C | MRACE20C | component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 75 | Mother's Race Tabulation Variable 21C | MRACE21C | component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 76 | Mother's Race Tabulation Variable 22C | MRACE22C | component[FirstOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 77 | Mother's Race Tabulation Variable 23C | MRACE23C | component[SecondOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 313 | Father's Race Tabulation Variable 1E | FRACE1E | component[FirstEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 314 | Father's Race Tabulation Variable 2E | FRACE2E | component[SecondEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 315 | Father's Race Tabulation Variable 3E | FRACE3E | component[ThirdEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 316 | Father's Race Tabulation Variable 4E | FRACE4E | component[FourthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 317 | Father's Race Tabulation Variable 5E | FRACE5E | component[FifthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 318 | Father's Race Tabulation Variable 6E | FRACE6E | component[SixthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 319 | Father's Race Tabulation Variable 7E | FRACE7E | component[SeventhEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 320 | Father's Race Tabulation Variable 8E | FRACE8E | component[EighthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 321 | Father's Race Tabulation Variable 16C | FRACE16C | component[FirstAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 322 | Father's Race Tabulation Variable 17C | FRACE17C | component[SecondAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 323 | Father's Race Tabulation Variable 18C | FRACE18C | component[FirstOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 324 | Father's Race Tabulation Variable 19C | FRACE19C | component[SecondOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 325 | Father's Race Tabulation Variable 20C | FRACE20C | component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 326 | Father's Race Tabulation Variable 21C | FRACE21C | component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 327 | Father's Race Tabulation Variable 22C | FRACE22C | component[FirstOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 328 | Father's Race Tabulation Variable 23C | FRACE23C | component[SecondOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetRaceCodeVitalRecords] |
| Fetal Death | 329 | Mother's Hispanic Code for Literal | METHNIC5C | component[HispanicCodeForLiteral].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetHispanicOriginVitalRecords] |
| Fetal Death | 330 | Mother's Edited Hispanic Origin Code | METHNICE | component[HispanicCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[ValueSetHispanicOriginVitalRecords] |
| Fetal Death | 332 | Father's Hispanic Code for Literal | FETHNIC5C | component[HispanicCodeForLiteral].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetHispanicOriginVitalRecords] |
| Fetal Death | 333 | Father's Edited Hispanic Origin Code | FETHNICE | component[HispanicCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[ValueSetHispanicOriginVitalRecords] |
| Mortality | 67 | First Edited Code | RACE1E | component[FirstEditedCode].value | |- |
| Mortality | 68 | Second Edited Code | RACE2E | component[SecondEditedCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 69 | Third Edited Code | RACE3E | component[ThirdEditedCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 70 | Fourth Edited Code | RACE4E | component[FourthEditedCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 71 | Fifth Edited Code | RACE5E | component[FifthEditedCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 72 | Sixth Edited Code | RACE6E | component[SixthEditedCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 73 | Seventh Edited Code | RACE7E | component[SeventhEditedCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 74 | Eighth Edited Code | RACE8E | component[EighthEditedCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 75 | First American Indian Code | RACE16C | component[FirstAmericanIndianCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 76 | Second American Indian Code | RACE17C | component[SecondAmericanIndianCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 77 | First Other Asian Code | RACE18C | component[FirstOtherAsianCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 78 | Second Other Asian Code | RACE19C | component[SecondOtherAsianCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 79 | First Other Pacific Islander Code | RACE20C | component[FirstOtherPacificIslanderCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 80 | Second Other Pacific Islander Code | RACE21C | component[SecondOtherPacificIslanderCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 81 | First Other Race Code | RACE22C | component[FirstOtherRaceCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 82 | Second Other Race Code | RACE23C | component[SecondOtherRaceCode].value |codeable |[ValueSetRaceCodeVitalRecords] |
| Mortality | 160 | Hispanic | DETHNICE  | component[HispanicCode].value |codeable |[ValueSetHispanicOriginVitalRecords] |
| Mortality | 247 | Hispanic Code for Literal | DETHNIC5C | component[HispanicCodeForLiteral].value |codeable |[ValueSetHispanicOriginVitalRecords] |
| Mortality | NA | Race Recode 40  (No longer provided as of 2022) | *NO IJE MAPPING* | component[ValueSetRaceRecode40VitalRecords].value |codeable |[RaceRecode40VS] |
{: .grid }
{% include markdown-link-references.md %}
