In cases where multiple races are recorded for a person an algorithm (NCHS defined) is used to select a single race. The goal is to provide race statistics that are comparable with those used historically to facilitate time series analysis. The goal is to maintain consistency between data collected after the definitional change (allowing collection of multiple races and ethnicities) and that collected prior to that time. This intent is to maintain the integrity of time series (data collected from a range of time periods) reporting.
### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 34 | Mother of Hispanic Origin?--Mexican | METHNIC1 | component[ HispanicMexican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Natality | 35 | Mother of Hispanic Origin?--Puerto Rican | METHNIC2 | component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Natality | 36 | Mother of Hispanic Origin?--Cuban | METHNIC3 | component[ HispanicCuban ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Natality | 37 | Mother of Hispanic Origin?--Other | METHNIC4 | component[ HispanicOther ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Natality | 38 | Mother of Hispanic Origin?--Other Literal | METHNIC5 | component[ HispanicLiteral ].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Natality | 39 | Mother's Race--White | MRACE1 | component[ White].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 40 | Mother's Race--Black or African American | MRACE2 | component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 41 | Mother's Race--American Indian or Alaska Native | MRACE3 | component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 42 | Mother's Race--Asian Indian | MRACE4 | component[ AsianIndian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 43 | Mother's Race--Chinese | MRACE5 | component[ Chinese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 44 | Mother's Race--Filipino | MRACE6 | component[ Filipino].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 45 | Mother's Race--Japanese | MRACE7 | component[ Japanese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 46 | Mother's Race--Korean | MRACE8 | component[ Korean].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 47 | Mother's Race--Vietnamese | MRACE9 | component[ Vietnamese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 48 | Mother's Race--Other Asian | MRACE10 | component[ OtherAsian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 49 | Mother's Race--Native Hawaiian | MRACE11 | component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 50 | Mother's Race--Guamanian or Chamorro | MRACE12 | component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 51 | Mother's Race--Samoan | MRACE13 | component[ Samoan].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 52 | Mother's Race--Other Pacific Islander | MRACE14 | component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 53 | Mother's Race--Other | MRACE15 | component[ OtherRace].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Natality | 54 | Mother's Race--First American Indian or Alaska Native Literal | MRACE16 | component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Natality | 55 | Mother's Race--Second American Indian or Alaska Native Literal | MRACE17 | component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Natality | 56 | Mother's Race--First Other Asian Literal | MRACE18 | component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Natality | 57 | Mother's Race--Second Other Asian Literal | MRACE19 | component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Natality | 58 | Mother's Race--First Other Pacific Islander Literal | MRACE20 | component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Natality | 59 | Mother's Race--Second Other Pacific Islander Literal | MRACE21 | component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Natality | 60 | Mother's Race--First Other Literal | MRACE22 | component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Natality | 61 | Mother's Race--Second Other Literal | MRACE23 | component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Natality | 80 | Father of Hispanic Origin?--Mexican | FETHNIC1 | component[ HispanicMexican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Natality | 81 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2 | component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Natality | 82 | Father of Hispanic Origin?--Cuban | FETHNIC3 | component[ HispanicCuban ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Natality | 83 | Father of Hispanic Origin?--Other | FETHNIC4 | component[ HispanicOther ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Natality | 84 | Father of Hispanic Origin?--Other Literal | FETHNIC5 | component[ HispanicLiteral ].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Natality | 85 | Father's Race--White | FRACE1 | component[ White].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 86 | Father's Race--Black or African American | FRACE2 | component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 87 | Father's Race--American Indian or Alaska Native | FRACE3 | component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 88 | Father's Race--Asian Indian | FRACE4 | component[ AsianIndian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 89 | Father's Race--Chinese | FRACE5 | component[ Chinese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 90 | Father's Race--Filipino | FRACE6 | component[ Filipino].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 91 | Father's Race--Japanese | FRACE7 | component[ Japanese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 92 | Father's Race--Korean | FRACE8 | component[ Korean].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 93 | Father's Race--Vietnamese | FRACE9 | component[ Vietnamese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 94 | Father's Race--Other Asian | FRACE10 | component[ OtherAsian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 95 | Father's Race--Native Hawaiian | FRACE11 | component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 96 | Father's Race--Guamanian or Chamorro | FRACE12 | component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 97 | Father's Race--Samoan | FRACE13 | component[ Samoan].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 98 | Father's Race--Other Pacific Islander | FRACE14 | component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 99 | Father's Race--Other | FRACE15 | component[ OtherRace].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Natality | 100 | Father's Race--First American Indian or Alaska Native Literal | FRACE16 | component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Natality | 101 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17 | component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Natality | 102 | Father's Race--First Other Asian Literal | FRACE18 | component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Natality | 103 | Father's Race--Second Other Asian Literal | FRACE19 | component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Natality | 104 | Father's Race--First Other Pacific Islander Literal | FRACE20 | component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Natality | 105 | Father's Race--Second Other Pacific Islander Literal | FRACE21 | component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Natality | 106 | Father's Race--First Other Literal | FRACE22 | component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Natality | 107 | Father's Race--Second Other Literal | FRACE23 | component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Fetal Death | 34 | Mother of Hispanic Origin?--Mexican | METHNIC1 | component[ HispanicMexican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Fetal Death | 35 | Mother of Hispanic Origin?--Puerto Rican | METHNIC2 | component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Fetal Death | 36 | Mother of Hispanic Origin?--Cuban | METHNIC3 | component[ HispanicCuban ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Fetal Death | 37 | Mother of Hispanic Origin?--Other | METHNIC4 | component[ HispanicOther ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Fetal Death | 38 | Mother of Hispanic Origin?--Other Literal | METHNIC5 | component[ HispanicLiteral ].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Fetal Death | 39 | Mother's Race--White | MRACE1 | component[ White].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 40 | Mother's Race--Black or African American | MRACE2 | component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 41 | Mother's Race--American Indian or Alaska Native | MRACE3 | component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 42 | Mother's Race--Asian Indian | MRACE4 | component[ AsianIndian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 43 | Mother's Race--Chinese | MRACE5 | component[ Chinese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 44 | Mother's Race--Filipino | MRACE6 | component[ Filipino].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 45 | Mother's Race--Japanese | MRACE7 | component[ Japanese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 46 | Mother's Race--Korean | MRACE8 | component[ Korean].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 47 | Mother's Race--Vietnamese | MRACE9 | component[ Vietnamese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 48 | Mother's Race--Other Asian | MRACE10 | component[ OtherAsian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 49 | Mother's Race--Native Hawaiian | MRACE11 | component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 50 | Mother's Race--Guamanian or Chamorro | MRACE12 | component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 51 | Mother's Race--Samoan | MRACE13 | component[ Samoan].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 52 | Mother's Race--Other Pacific Islander | MRACE14 | component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 53 | Mother's Race--Other | MRACE15 | component[ OtherRace].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] |boolean | |
| Fetal Death | 54 | Mother's Race--First American Indian or Alaska Native Literal | MRACE16 | component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Fetal Death | 55 | Mother's Race--Second American Indian or Alaska Native Literal | MRACE17 | component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Fetal Death | 56 | Mother's Race--First Other Asian Literal | MRACE18 | component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Fetal Death | 57 | Mother's Race--Second Other Asian Literal | MRACE19 | component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Fetal Death | 58 | Mother's Race--First Other Pacific Islander Literal | MRACE20 | component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Fetal Death | 59 | Mother's Race--Second Other Pacific Islander Literal | MRACE21 | component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Fetal Death | 60 | Mother's Race--First Other Literal | MRACE22 | component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Fetal Death | 61 | Mother's Race--Second Other Literal | MRACE23 | component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] |string | |
| Fetal Death | 285 | Father of Hispanic Origin?--Mexican | FETHNIC1 | component[ HispanicMexican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Fetal Death | 286 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2 | component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Fetal Death | 287 | Father of Hispanic Origin?--Cuban | FETHNIC3 | component[ HispanicCuban ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Fetal Death | 288 | Father of Hispanic Origin?--Other | FETHNIC4 | component[ HispanicOther ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[HispanicNoUnknownVS] |
| Fetal Death | 289 | Father of Hispanic Origin?--Other Literal | FETHNIC5 | component[ HispanicLiteral ].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Fetal Death | 290 | Father's Race--White | FRACE1 | component[ White].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 291 | Father's Race--Black or African American | FRACE2 | component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 292 | Father's Race--American Indian or Alaska Native | FRACE3 | component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 293 | Father's Race--Asian Indian | FRACE4 | component[ AsianIndian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 294 | Father's Race--Chinese | FRACE5 | component[ Chinese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 295 | Father's Race--Filipino | FRACE6 | component[ Filipino].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 296 | Father's Race--Japanese | FRACE7 | component[ Japanese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 297 | Father's Race--Korean | FRACE8 | component[ Korean].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 298 | Father's Race--Vietnamese | FRACE9 | component[ Vietnamese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 299 | Father's Race--Other Asian | FRACE10 | component[ OtherAsian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 300 | Father's Race--Native Hawaiian | FRACE11 | component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 301 | Father's Race--Guamanian or Chamorro | FRACE12 | component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 302 | Father's Race--Samoan | FRACE13 | component[ Samoan].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 303 | Father's Race--Other Pacific Islander | FRACE14 | component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 304 | Father's Race--Other | FRACE15 | component[ OtherRace].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |boolean | |
| Fetal Death | 305 | Father's Race--First American Indian or Alaska Native Literal | FRACE16 | component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Fetal Death | 306 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17 | component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Fetal Death | 307 | Father's Race--First Other Asian Literal | FRACE18 | component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Fetal Death | 308 | Father's Race--Second Other Asian Literal | FRACE19 | component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Fetal Death | 309 | Father's Race--First Other Pacific Islander Literal | FRACE20 | component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Fetal Death | 310 | Father's Race--Second Other Pacific Islander Literal | FRACE21 | component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Fetal Death | 311 | Father's Race--First Other Literal | FRACE22 | component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Fetal Death | 312 | Father's Race--Second Other Literal | FRACE23 | component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] |string | |
| Mortality | 39 | Decedent of Hispanic Origin?--Mexican | DETHNIC1 | component[ HispanicMexican].valueCoding |codeable |[HispanicNoUnknownVS] |
| Mortality | 40 | Decedent of Hispanic Origin?--Puerto Rican | DETHNIC2 | component[ HispanicPuertoRican].valueCoding |codeable |[HispanicNoUnknownVS] |
| Mortality | 41 | Decedent of Hispanic Origin?--Cuban | DETHNIC3 | component[ HispanicCuban ].valueCoding |codeable |[HispanicNoUnknownVS] |
| Mortality | 42 | Decedent of Hispanic Origin?--Other | DETHNIC4 | component[ HispanicOther ].valueCoding |codeable |[HispanicNoUnknownVS] |
| Mortality | 43 | Decedent of Hispanic Origin?--Other, Literal | DETHNIC5 | component[ HispanicLiteral ].valueString |string |- |
| Mortality | 44 | Decedent's Race--White | RACE1 | component[ White].valueBoolean |boolean |- |
| Mortality | 45 | Decedent's Race--Black or African American | RACE2 | component[ BlackOrAfricanAmerican].valueBoolean |boolean |- |
| Mortality | 46 | Decedent's Race--American Indian or Alaska Native | RACE3 | component[ AmericanIndianOrAlaskanNative].valueBoolean |boolean |- |
| Mortality | 47 | Decedent's Race--Asian Indian | RACE4 | component[ AsianIndian].valueBoolean |boolean |- |
| Mortality | 48 | Decedent's Race--Chinese | RACE5 | component[ Chinese].valueBoolean |boolean |- |
| Mortality | 49 | Decedent's Race--Filipino | RACE6 | component[ Filipino].valueBoolean |boolean |- |
| Mortality | 50 | Decedent's Race--Japanese | RACE7 | component[ Japanese].valueBoolean |boolean |- |
| Mortality | 51 | Decedent's Race--Korean | RACE8 | component[ Korean].valueBoolean |boolean |- |
| Mortality | 52 | Decedent's Race--Vietnamese | RACE9 | component[ Vietnamese].valueBoolean |boolean |- |
| Mortality | 53 | Decedent's Race--Other Asian | RACE10 | component[ OtherAsian].valueBoolean |boolean |- |
| Mortality | 54 | Decedent's Race--Native Hawaiian | RACE11 | component[ NativeHawaiian].valueBoolean |boolean |- |
| Mortality | 55 | Decedent's Race--Guamanian or Chamorro | RACE12 | component[ GuamanianOrChamorro].valueBoolean |boolean |- |
| Mortality | 56 | Decedent's Race--Samoan | RACE13 | component[ Samoan].valueBoolean |boolean |- |
| Mortality | 57 | Decedent's Race--Other Pacific Islander | RACE14 | component[ OtherPacificIslander].valueBoolean |boolean |- |
| Mortality | 58 | Decedent's Race--Other | RACE15 | component[ OtherRace].valueBoolean |boolean |- |
| Mortality | 59 | Decedent's Race--First American Indian or Alaska Native Literal | RACE16 | component[ FirstAmericanIndianOrAlaskanNativeLiteral].valueString |string |- |
| Mortality | 60 | Decedent's Race--Second American Indian or Alaska Native Literal | RACE17 | component[ SecondAmericanIndianOrAlaskanNativeLiteral].valueString |string |- |
| Mortality | 61 | Decedent's Race--First Other Asian Literal | RACE18 | component[ FirstOtherAsianLiteral].valueString |string |- |
| Mortality | 62 | Decedent's Race--Second Other Asian Literal | RACE19 | component[ SecondOtherAsianLiteral].valueString |string |- |
| Mortality | 63 | Decedent's Race--First Other Pacific Islander Literal | RACE20 | component[ FirstOtherPacificIslanderLiteral].valueString |string |- |
| Mortality | 64 | Decedent's Race--Second Other Pacific Islander Literal | RACE21 | component[ SecondOtherPacificIslanderLiteral].valueString |string |- |
| Mortality | 65 | Decedent's Race--First Other Literal | RACE22 | component[ FirstOtherRaceLiteral].valueString |string |- |
| Mortality | 66 | Decedent's Race--Second Other Literal | RACE23 | component[ SecondOtherRaceLiteral].valueString |string |- |
| Mortality | 83 | Decedent's Race--Missing | RACE_MVR | component[ MissingValueReason].valueCoding |codeable |[RaceMissingValueReasonVS]  |
{: .grid }
{% include markdown-link-references.md %}
