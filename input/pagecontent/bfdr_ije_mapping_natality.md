Many of the BFDR data elements can be identified using the IJE (Inter-Jurisdictional Exchange) data element names (codes). The IJE codes are used for data exchange among jurisdictions and with authorized data partners, such as National Vital Statistics System (NVSS). The National Center for Health Statistics (NCHS) has implemented IJE codes for exchange of mortality data with jurisdictions via the VRDR IG; however, the use of IJE codes has not yet been implemented for birth and fetal death reporting to NCHS.

The following IJE mappings to locations in FHIR specifications are for information purposes only:
* BFDR: Vital Records Birth and Fetal Death Reporting (this IG)
* VRCPL: [Vital Records Common Profile Library]({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}})
* US CORE: [US Core Implementation Guide, 5.0.1]({{site.data.fhir.ver.hl7fhiruscore}})
* ODH: [Occupational Data for Health]({{site.data.fhir.ver.hl7fhirusodh}})
* FHIR: [extensions](http://hl7.org/fhir/extensions/extension-registry.html)

#### Specifying None of the Above and Missing Data

Abnormal Conditions of Newborn
* If [ObservationNoneOfSpecifiedAbnormalConditionsOfNewborn] is present in bundle, then the interpretation is that all individual abnormal conditions of newborn are 'N'

Maternal Morbidities
* If [ObservationNoneOfSpecifiedMaternalMorbidities] is present in bundle, then the interpretation is that all individual maternal morbidities are 'N'

Characteristics of Labor and Delivery
* If [ObservationNoneOfSpecifiedCharacteristicsOfLaborAndDelivery] is present in bundle, then the interpretation is that all individual risk factors are 'N' 

Pregnancy Risk Factors
* If [ObservationNoneOfSpecifiedPregnancyRiskFactors] is present in bundle, then the interpretation is that all individual risk factors are 'N'

Congenital Anomalies of Newborn
* If code=260413007 (None), then the interpretation is that all individual congenital anomalies are 'N'

Infection Present During Pregnancy
* If code=260413007 (None), then the interpretation is that all individual infections are 'N'

### Natality (Live Birth) IJE Mapping

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set/Comments** | **Unique to Provider Report (P), Jurisdiction Report (J), Both (B), or Neither (N)** |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- | ---- |
| 3 | Certificate Number | FILENO| [CompositionProviderLiveBirthReport]|extension[liveBirthCertificateNumber].value | identifier | Used for Jurisdiction Report and Coded Race and Ethnicity Compositions also | B | 
| 5 | Auxiliary State file number | AUXNO| [CompositionProviderLiveBirthReport]|extension[liveBirthLocalFileNumber].value | identifier | Used for Jurisdiction Report also | B | 
| 243 | Date of Registration--Year | DOR_YR| [CompositionProviderLiveBirthReport]|extension[dateFiledByRegistrar].value | dateTime | Used for Jurisdiction Report also | B | 
| 244 | Date of Registration--Month | DOR_MO| [CompositionProviderLiveBirthReport]|extension[dateFiledByRegistrar].value | dateTime | Used for Jurisdiction Report also | B | 
| 245 | Date of Registration--Day | DOR_DY| [CompositionProviderLiveBirthReport]|extension[dateFiledByRegistrar].value | dateTime | Used for Jurisdiction Report also | B | 
| 186 | Characteristics of Labor & Delivery--Chorioamnionitis | CHOR| [ConditionChorioamnionitis]| | na | See [Note on missing characteristics of labor and delivery data] | B | 
| 219 | Congenital Anomalies of the Newborn--Anencephaly | ANEN| [ConditionCongenitalAnomalyOfNewborn]|code=89369001 (Anencephalus (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 220 | Congenital Anomalies of the Newborn--Meningomyelocele/Spina Bifida | MNSB| [ConditionCongenitalAnomalyOfNewborn]|code=67531005 (Spina bifida (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 221 | Congenital Anomalies of the Newborn--Cyanotic congenital heart disease | CCHD| [ConditionCongenitalAnomalyOfNewborn]|code=12770006 (Cyanotic congenital heart disease (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 222 | Congenital Anomalies of the Newborn--Congenital diaphragmatic hernia | CDH| [ConditionCongenitalAnomalyOfNewborn]|code=17190001 (Congenital diaphragmatic hernia (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 223 | Congenital Anomalies of the Newborn--Omphalocele | OMPH| [ConditionCongenitalAnomalyOfNewborn]|code=18735004 (Congenital omphalocele (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 224 | Congenital Anomalies of the Newborn--Gastroschisis | GAST| [ConditionCongenitalAnomalyOfNewborn]|code=72951007 (Gastroschisis (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 225 | Congenital Anomalies of the Newborn--Limb Reduction Defect | LIMB| [ConditionCongenitalAnomalyOfNewborn]|code=67341007 (Longitudinal deficiency of limb (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 226 | Congenital Anomalies of the Newborn--Cleft Lip with or without Cleft Palate | CL| [ConditionCongenitalAnomalyOfNewborn]|code=80281008 (Cleft lip (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 227 | Congenital Anomalies of the Newborn--Cleft Palate Alone | CP| [ConditionCongenitalAnomalyOfNewborn]|code=87979003 (Cleft palate (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 228 | Congenital Anomalies of the Newborn--Down Syndrome | DOWT| [ConditionCongenitalAnomalyOfNewborn]|code=70156005 (Anomaly of chromosome pair 21 (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 229 | Congenital Anomalies of the Newborn--Suspected Chromosomal disorder | CDIT| [ConditionCongenitalAnomalyOfNewborn]|code=409709004 (Chromosomal disorder (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 230 | Congenital Anomalies of the Newborn--Hypospadias | HYPO| [ConditionCongenitalAnomalyOfNewborn]|code=416010008 (Hypospadias (disorder)) | na | See [Note on missing congenital anomaly data] | B | 
| 239 | Risk Factors--Hypertension Eclampsia   (RECOMMENDED ADDITION EFFECTIVE 2004) | EHYPE| [ConditionEclampsiaHypertension]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 158 | Risk Factors--Gestational Diabetes | GDIAB| [ConditionGestationalDiabetes]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 160 | Risk Factors--Hypertension Gestational   (SEE ADDITIONAL HYPERTENSION CATEGORY IN LOCATION 924 TO REFLECT RECOMMENDED CHANGES EFFECTIVE 2004) | GHYPE| [ConditionGestationalHypertension]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 168 | Infections Present--Gonorrhea | GON| [ConditionInfectionPresentDuringPregnancy]|code=15628003 (Gonorrhea (disorder)) | na | See [Note on missing infections present data] | B | 
| 169 | Infections Present--Syphilis | SYPH| [ConditionInfectionPresentDuringPregnancy]|code=76272004 (Syphilis (disorder)) | na | See [Note on missing infections present data] | B | 
| 171 | Infections Present--Chlamydia | CHAM| [ConditionInfectionPresentDuringPregnancy]|code=105629000 (Chlamydial infection (disorder)) | na | See [Note on missing infections present data] | B | 
| 172 | Infections Present--Hepatitis B | HEPB| [ConditionInfectionPresentDuringPregnancy]|code=66071002 (Viral hepatitis type B (disorder)) | na | See [Note on missing infections present data] | B | 
| 173 | Infections Present--Hepatitis C | HEPC| [ConditionInfectionPresentDuringPregnancy]|code=50711007 (Viral hepatitis type C (disorder)) | na | See [Note on missing infections present data] | B | 
| Not Mapped | Infections Present--Genital herpes simplex | Not Mapped| [ConditionInfectionPresentDuringPregnancy]|code=33839006 (Genital herpes simplex (disorder)) | na | Michigan state-specific requirement. | B | 
| 196 | <nobr>Maternal Morbidity--Perineal Laceration</nobr> | PLAC| [ConditionPerinealLaceration]| | na | See [Note on missing maternal morbidity data] | B | 
| 157 | Risk Factors--Prepregnancy Diabetes | PDIAB| [ConditionPrepregnancyDiabetes]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 159 | Risk Factors--Prepregnancy Hypertension  | PHYPE| [ConditionPrepregnancyHypertension]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 197 | Maternal Morbidity--Ruptured Uterus | RUT| [ConditionRupturedUterus]| | na | See [Note on missing maternal morbidity data] | B | 
| 217 | Abnormal Conditions of the Newborn--Seizures | SEIZ| [ConditionSeizure]| | na | See [Note on missing abnormal conditions of newborn data] | B | 
| 153 | Principal source of Payment for this delivery | PAY| [CoveragePrincipalPayerDelivery]|type | codeable | [BirthAndFetalDeathFinancialClassVS]  | B | 
| 125 | Mother Transferred? | TRAN| [Encounter_Maternity]|hospitalization.admitSource = "hosp-trans" | codeable | [HL7EncounterAdmitSourceVS](http://hl7.org/fhir/ValueSet/encounter-admit-source), <br />See [Note on missing data]. <br />Need to discuss - clarity needed for values other than 'hosp-trans' | B | 
| 302 | Facility Mother Moved From (if transferred) | HOSPFROM| [Encounter_Maternity]|hospitalization.origin.name | string |  | B | 
| 11 | Place Where Birth Occurred (type of place or institution) | BPLACE| [EncounterBirth]|location.physicalType | codeable | [BirthDeliveryOccurredVS] | B | 
| 12 | Facility ID (NPI) - if available | FNPI| [EncounterBirth]|location.location.id | string |  | B | 
| 13 | Facility ID (State-Assigned) | SFN| [EncounterBirth]|location.location.identifier | Identifier |  | B | 
| 231 | Was Infant Transferred Within 24 Hours of Delivery? | ITRAN| [EncounterBirth]|hospitalization.dischargeDisposition="other-hcf" | codeable | [USCoreDischargeDispositionVS](http://hl7.org/fhir/us/core/ValueSet/us-core-discharge-disposition). <br />See [Note on missing data]. <br />Need to discuss - clarity needed for values other than 'other-hcf' | B | 
| 253 | Name of Facility of Birth | HOSP| [EncounterBirth]|location.location.name | string |  | B | 
| 303 | Facility Infant Transferred To (if transferred w/in 24 hours) | HOSPTO| [EncounterBirth]|hospitalization.destination.name | string |  | B | 
| 334 | Date Signed by Certifier--Year | CERTIFIED_YR| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | B | 
| 335 | Date Signed by Certifier--Month | CERTIFIED_MO| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | B | 
| 336 | Date Signed by Certifier--Day | CERTIFIED_DY| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | B | 
| 34 | Mother of Hispanic Origin?--Mexican | METHNIC1| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicMexican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 35 | Mother of Hispanic Origin?--Puerto Rican | METHNIC2| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 36 | Mother of Hispanic Origin?--Cuban | METHNIC3| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicCuban ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 37 | Mother of Hispanic Origin?--Other | METHNIC4| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicOther ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 38 | Mother of Hispanic Origin?--Other Literal | METHNIC5| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicLiteral ].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | B | 
| 39 | Mother's Race--White | MRACE1| [ObservationInputRaceAndEthnicityVitalRecords]|component[ White].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 40 | Mother's Race--Black or African American | MRACE2| [ObservationInputRaceAndEthnicityVitalRecords]|component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 41 | Mother's Race--American Indian or Alaska Native | MRACE3| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 42 | Mother's Race--Asian Indian | MRACE4| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AsianIndian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 43 | Mother's Race--Chinese | MRACE5| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Chinese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 44 | Mother's Race--Filipino | MRACE6| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Filipino].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 45 | Mother's Race--Japanese | MRACE7| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Japanese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 46 | Mother's Race--Korean | MRACE8| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Korean].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 47 | Mother's Race--Vietnamese | MRACE9| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Vietnamese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 48 | Mother's Race--Other Asian | MRACE10| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherAsian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 49 | Mother's Race--Native Hawaiian | MRACE11| [ObservationInputRaceAndEthnicityVitalRecords]|component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 50 | Mother's Race--Guamanian or Chamorro | MRACE12| [ObservationInputRaceAndEthnicityVitalRecords]|component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 51 | Mother's Race--Samoan | MRACE13| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Samoan].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 52 | Mother's Race--Other Pacific Islander | MRACE14| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 53 | Mother's Race--Other | MRACE15| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherRace].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | B | 
| 54 | Mother's Race--First American Indian or Alaska Native Literal | MRACE16| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | B | 
| 55 | Mother's Race--Second American Indian or Alaska Native Literal | MRACE17| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | B | 
| 56 | Mother's Race--First Other Asian Literal | MRACE18| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | B | 
| 57 | Mother's Race--Second Other Asian Literal | MRACE19| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | B | 
| 58 | Mother's Race--First Other Pacific Islander Literal | MRACE20| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | B | 
| 59 | Mother's Race--Second Other Pacific Islander Literal | MRACE21| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | B | 
| 60 | Mother's Race--First Other Literal | MRACE22| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | B | 
| 61 | Mother's Race--Second Other Literal | MRACE23| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | B | 
| 80 | Father of Hispanic Origin?--Mexican | FETHNIC1| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicMexican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 81 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 82 | Father of Hispanic Origin?--Cuban | FETHNIC3| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicCuban ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 83 | Father of Hispanic Origin?--Other | FETHNIC4| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicOther ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 84 | Father of Hispanic Origin?--Other Literal | FETHNIC5| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicLiteral ].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 85 | Father's Race--White | FRACE1| [ObservationInputRaceAndEthnicityVitalRecords]|component[ White].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 86 | Father's Race--Black or African American | FRACE2| [ObservationInputRaceAndEthnicityVitalRecords]|component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 87 | Father's Race--American Indian or Alaska Native | FRACE3| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 88 | Father's Race--Asian Indian | FRACE4| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AsianIndian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 89 | Father's Race--Chinese | FRACE5| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Chinese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 90 | Father's Race--Filipino | FRACE6| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Filipino].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 91 | Father's Race--Japanese | FRACE7| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Japanese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 92 | Father's Race--Korean | FRACE8| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Korean].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 93 | Father's Race--Vietnamese | FRACE9| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Vietnamese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 94 | Father's Race--Other Asian | FRACE10| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherAsian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 95 | Father's Race--Native Hawaiian | FRACE11| [ObservationInputRaceAndEthnicityVitalRecords]|component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 96 | Father's Race--Guamanian or Chamorro | FRACE12| [ObservationInputRaceAndEthnicityVitalRecords]|component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 97 | Father's Race--Samoan | FRACE13| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Samoan].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 98 | Father's Race--Other Pacific Islander | FRACE14| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 99 | Father's Race--Other | FRACE15| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherRace].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 100 | Father's Race--First American Indian or Alaska Native Literal | FRACE16| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 101 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 102 | Father's Race--First Other Asian Literal | FRACE18| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 103 | Father's Race--Second Other Asian Literal | FRACE19| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 104 | Father's Race--First Other Pacific Islander Literal | FRACE20| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 105 | Father's Race--Second Other Pacific Islander Literal | FRACE21| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 106 | Father's Race--First Other Literal | FRACE22| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 107 | Father's Race--Second Other Literal | FRACE23| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 185 | Characteristics of Labor & Delivery--Antibiotics | ANTB| [ObservationAntibioticsAdministeredDuringLabor]| | na | See [Note on missing characteristics of labor and delivery data] | B | 
| 205 | Apgar Score at 5 Minutes | APGAR5| [ObservationApgarScore]|value, <br />code = 9274-2 (5 minute Apgar Score) | integer | [ApgarTimingVS] | B | 
| 206 | Apgar Score at 10 Minutes | APGAR10| [ObservationApgarScore]|value, <br />code = 9271-8 (10 minute Apgar Score) | integer | [ApgarTimingVS] | B | 
| 201 | Birthweight in grams | BWG| [ObservationBirthWeight]|value | quantity |  | B | 
| 202 | Birthweight--Edit Flag | BW_BYPASS| [ObservationBirthWeight]|value.extension[bypassEditFlag].value | codeable | [BirthWeightEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 149 | Number of Cigarettes Smoked in 3 months prior to Pregnancy | CIGPN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=64794-1 (In the 3 months before you got pregnant, <br />how many cigarettes did you smoke on an average day) | integer |  | B | 
| 150 | Number of Cigarettes Smoked in 1st 3 months | CIGFN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=87298-6 (Cigarettes smoked per day by Mother--1st trimester) | integer |  | B | 
| 151 | Number of Cigarettes Smoked in 2nd 3 months | CIGSN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=87299-4 (Cigarettes smoked per day by Mother--2nd trimester) | integer |  | B | 
| 152 | Number of Cigarettes Smoked in  third trimester (RECOMMENDED CHANGE EFFECTIVE 2004) | CIGLN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=64795-8 (In the last 3 months of your pregnancy, how many cigarettes did you smoke on an average day) | integer |  | B | 
| 126 | Date of First Prenatal Care Visit--Month | DOFP_MO| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 127 | Date of First Prenatal Care Visit--Day | DOFP_DY| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 128 | Date of First Prenatal Care Visit--Year | DOFP_YR| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 145 | Date of Last Live Birth--Month | MLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 146 | Date of Last Live Birth--Year | YLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 147 | Date of Last Other Pregnancy Outcome--Month | MOPO| [ObservationDateOfLastOtherPregnancyOutcome]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 148 | Date of Last Other Pregnancy Outcome--Year | YOPO| [ObservationDateOfLastOtherPregnancyOutcome]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 192 | Method of Delivery--Fetal Presentation | PRES| [ObservationFetalPresentation]|value | codeable | [FetalPresentationsVS] | B | 
| 203 | Obstetric Estimation of Gestation | OWGEST| [ObservationGestationalAgeAtDelivery]|value | quantity |  | B | 
| 204 | Obstetric Estimation of Gestation--Edit Flag | OWGEST_BYPASS| [ObservationGestationalAgeAtDelivery]|value.extension[bypassEditFlag].value | codeable | [EstimateOfGestationEditFlagsVS], <br />See [Handling of edit flags]  | J | 
| 199 | Maternal Morbidity--Admit to Intensive Care | AINT| [ObservationICUAdmission]| | na | See [Note on missing maternal morbidity data] | B | 
| 233 | Is Infant Being Breastfed at discharge? (RECOMMENDED CHANGE EFFECTIVE 2004) | BFED| [ObservationInfantBreastfedAtDischarge]|value | boolean | Discussion needed: IJE values are Y, N, U. However, encoding with Boolean does not capture Unknown | B | 
| 232 | Is Infant Living at Time of Report? | ILIV| [ObservationInfantLiving]|value | boolean | Discussion needed: IJE values are Y, N, U. However, encoding with Boolean does not capture Unknown | B | 
| 194 | Method of Delivery--Trial of Labor Attempted | TLAB| [ObservationLaborTrialAttempted]|value | boolean | Discussion needed: IJE values are Y, N, U, and X (not applicable). However, encoding with Boolean does not capture Unknown or Not Applicable | B | 
| 154 | Date Last Normal Menses Began--Year | DLMP_YR| [ObservationLastMenstrualPeriod]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 155 | Date Last Normal Menses Began--Month | DLMP_MO| [ObservationLastMenstrualPeriod]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 156 | Date Last Normal Menses Began--Day | DLMP_DY| [ObservationLastMenstrualPeriod]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 139 | Mother's Weight at Delivery (in whole pounds) | DWGT| [ObservationMotherDeliveryWeight]|value | quantity |  | B | 
| 140 | Mother's Weight at Delivery--Edit Flag | DWGT_BYPASS| [ObservationMotherDeliveryWeight]|value.extension[bypassEditFlag].value | codeable | [PregnancyReportEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 134 | Mother's Height--Feet | HFT| [ObservationMotherHeight]|value | quantity |  | B | 
| 135 | Mother's Height--Inches | HIN| [ObservationMotherHeight]|value | quantity |  | B | 
| 136 | Mother's Height--Edit Flag | HGT_BYPASS| [ObservationMotherHeight]|value.extension[bypassEditFlag].value | codeable | [PregnancyReportEditFlagsVS], <br />See [Handling of edit flags]  | J | 
| 30 | Mother Married?-- At Conception, at Birth or any Time in Between | MARN| [ObservationMotherMarriedDuringPregnancy]|value | codeable | [ValueSetYesNoUnknownVitalRecords] | B | 
| 137 | Mother's Prepregnancy Weight (in whole pounds) | PWGT| [ObservationMotherPrepregnancyWeight]|value | quantity |  | B | 
| 138 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS| [ObservationMotherPrepregnancyWeight]|value.extension[bypassEditFlag].value | codeable | [PregnancyReportEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 141 | Did Mother get WIC Food for Herself? | WIC| [ObservationMotherReceivedWICFood]|value | codeable | [ValueSetYesNoUnknownVitalRecords] | B | 
| 214 | Abnormal Conditions of the Newborn--Admission to NICU | NICU| [ObservationNICUAdmission]| | na | See [Note on missing abnormal conditions of newborn data] | B | 
| 143 | Previous Live Births Now Dead | PLBD| [ObservationNumberBirthsNowDead]|value | integer |  | B | 
| 142 | Previous Live Births Now Living | PLBL| [ObservationNumberBirthsNowLiving]|value | integer |  | B | 
| 209 | Number of Live Born | LIVEB| [ObservationNumberLiveBirthsThisDelivery]|value | integer |  | B | 
| 144 | Previous Other Pregnancy Outcomes | POPO| [ObservationNumberOtherPregnancyOutcomes]|value | integer |  | B | 
| 132 | Total Number of Prenatal Care Visits | NPREV| [ObservationNumberPrenatalVisits]|value | integer |  | B | 
| 133 | Total Number of Prenatal Care Visits--Edit Flag | NPREV_BYPASS| [ObservationNumberPrenatalVisits]|value.extension[bypassEditFlag].value | codeable | [PregnancyReportEditFlagsVS], <br />See [Handling of edit flags]  | J | 
| 166 | Risk Factors--Number Previous Cesareans | NPCES| [ObservationNumberPreviousCesareans]|value | integer |  | B | 
| 167 | Risk Factors--Number Previous Cesareans--Edit Flag | NPCES_BYPASS| [ObservationNumberPreviousCesareans]|value.extension[bypassEditFlag].value | codeable | [NumberPreviousCesareansEditFlagsVS], <br />See [Handling of edit flags]  | J | 
| 32 | Mother's Education | MEDUC| [ObservationParentEducationLevelVitalRecords]|value,  <br />focus[ PatientMotherVitalRecords ] | codeable | [EducationLevelVS] | B | 
| 78 | Father's Education | FEDUC| [ObservationParentEducationLevelVitalRecords]|value, focus[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [EducationLevelVS] | B | 
| 31 | Mother Married?--Acknowledgement of Paternity Signed | ACKN| [ObservationPaternityAcknowledgementSigned]|value | codeable | [ValueSetYesNoNotApplicableVitalRecords] | B | 
| 161 | Risk Factors--Previous Preterm Births | PPB| [ObservationPreviousPretermBirth]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 321 | Social Security Number Requested for Child? | SSN_REQ| [ObservationSSNRequestedForChild]|value | boolean |  | B | 
| 184 | Characteristics of Labor & Delivery--Steroids | STER| [ObservationSteroidsFetalLungMaturation]| | na | See [Note on missing characteristics of labor and delivery data] | B | 
| 282 | Occupation of Mother | MOM_OC_T| [odh-UsualWork]|value.text | string(40) |  | B | 
| 284 | Occupation of Father | DAD_OC_T| [odh-UsualWork]|value.text | string(40) |  | B | 
| 286 | Industry of Mother | MOM_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | B | 
| 288 | Industry of Father | DAD_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | B | 
| 234 | NCHS USE ONLY: Receipt date -- Year | R_YR| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | B | 
| 235 | NCHS USE ONLY: Receipt date -- Month | R_MO| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | B | 
| 236 | NCHS USE ONLY: Receipt date -- Day | R_DY| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | B | 
| 1 | Date of Birth (Infant)--Year | IDOB_YR| [PatientChildVitalRecords]|birthDate | date |  | B | 
| 2 | State, U.S. Territory or Canadian Province of Birth (Infant) - code | BSTATE| [PatientChildVitalRecords]|extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesAndProvincesVS] | B | 
| 6 | Time of Birth | TB| [PatientChildVitalRecords]|birthDate.extension[patient-birthTime] |  | See [PartialDatesAndTimes] | B | 
| 7 | Sex | ISEX| [PatientChildVitalRecords]|extension[us-core-birthsex].value | codeable | [USCoreBirthSexVS](http://hl7.org/fhir/us/core/ValueSet/birthsex) | B | 
| 8 | Date of Birth (Infant)--Month | IDOB_MO| [PatientChildVitalRecords]|birthDate | date |  | B | 
| 9 | Date of Birth (Infant)--Day | IDOB_DY| [PatientChildVitalRecords]|birthDate | date |  | B | 
| 10 | County of Birth | CNTYO| [PatientChildVitalRecords]|extension[patient-birthplace].value[x].district.extension[countyCode] | integer | See [CountyCodes] | B | 
| 207 | Plurality | PLUR| [PatientChildVitalRecords]|extension[patient-multipleBirthTotal].valuePositiveInt | integer |  | B | 
| 208 | Set Order | SORD| [PatientChildVitalRecords]|multipleBirth[x] | integer |  | B | 
| 211 | Plurality--Edit Flag | PLUR_BYPASS| [PatientChildVitalRecords]|multipleBirth.extension[bypassEditFlag].value | codeable | [PluralityEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 237 | Mother's Reported Age | MAGER| [PatientChildVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, <br />extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=<br />Reference[ PatientMotherVitalRecords ] | quantity |  | B | 
| 238 | Father's Reported Age | FAGER| [PatientChildVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, <br />extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=<br />Reference[ RelatedPersonFatherNaturalVitalRecords ] | quantity |  | B | 
| 247 | Child's First Name | KIDFNAME| [PatientChildVitalRecords]|name.given, <br />name.use = official | string |  | B | 
| 248 | Child's Middle Name | KIDMNAME| [PatientChildVitalRecords]|name.given, <br />name.use = official  | string |  | B | 
| 249 | Child's Last Name | KIDLNAME| [PatientChildVitalRecords]|name.family, <br />name.use = official | string |  | B | 
| 250 | Child's Surname Suffix (moved from end) | KIDSUFFX| [PatientChildVitalRecords]|name.suffix, <br />name.use = official | string |  | B | 
| 251 | County of Birth (Literal) | BIRTH_CO| [PatientChildVitalRecords]|extension[patient-birthPlace].value[x].district | string |  | B | 
| 252 | City/town/place of birth (Literal) | BRTHCITY| [PatientChildVitalRecords]|extension[patient-birthPlace].value[x].city | string |  | B | 
| 332 | Infant's Medical Record Number | INF_MED_REC_NUM| [PatientChildVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”MR”  | string |  | B | 
| 14 | Date of Birth (Mother)--Year | MDOB_YR| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | B | 
| 15 | Date of Birth (Mother)--Month | MDOB_MO| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | B | 
| 16 | Date of Birth (Mother)--Day | MDOB_DY| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | B | 
| 17 | Date of Birth (Mother)--Edit Flag | MAGE_BYPASS| [PatientMotherVitalRecords]|birthDate.extension[bypassEditFlag].value | codeable | [MothersDateOfBirthEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 18 | State, U.S. Territory or Canadian Province of Birth (Mother) - code | BPLACEC_ST_TER| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesAndProvincesVS] | B | 
| 19 | Birthplace of Mother--Country | BPLACEC_CNT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country  | string | [ResidenceCountryVS] | B | 
| 20 | Residence of Mother--City | CITYC| [PatientMotherVitalRecords]|address.city.extension[ cityCode ] | integer | See [CityCodes] | B | 
| 21 | Residence of Mother--County | COUNTYC| [PatientMotherVitalRecords]|address.district.extension[countyCode] | integer | See [CountyCodes] | B | 
| 22 | State, U.S. Territory or Canadian Province of Residence (Mother) - code | STATEC| [PatientMotherVitalRecords]|address.state | string | [StatesTerritoriesAndProvincesVS] | B | 
| 23 | Residence of Mother--Country | COUNTRYC| [PatientMotherVitalRecords]|address.country | string | [ResidenceCountryVS] | B | 
| 24 | Residence of Mother--Inside City Limits | LIMITS| [PatientMotherVitalRecords]|address.extension[ withinCityLimitsIndicator ].value | codeable | [ValueSetYesNoUnknownVitalRecords] | B | 
| 254 | Mother's First Name | MOMFNAME| [PatientMotherVitalRecords]|name.given, <br />name.use = official | string |  | B | 
| 255 | Mother's Middle Name | MOMMIDDL| [PatientMotherVitalRecords]|name.given, <br />name.use = official  | string |  | B | 
| 256 | Mother's Last Name | MOMLNAME| [PatientMotherVitalRecords]|name.family, <br />name.use = official | string |  | B | 
| 257 | Mother's Surname Suffix  | MOMSUFFX| [PatientMotherVitalRecords]|name.suffix, <br />name.use = official  | string |  | B | 
| 258 | Mother's First Maiden Name | MOMFMNME| [PatientMotherVitalRecords]|name.given, <br />name.use = maiden | string |  | B | 
| 259 | Mother's Middle Maiden Name | MOMMMID| [PatientMotherVitalRecords]|name.given, <br />name.use = maiden | string |  | B | 
| 260 | Mother's Maiden Surname | MOMMAIDN| [PatientMotherVitalRecords]|name.family, <br />name.use = maiden | string |  | B | 
| 261 | Mother's Maiden Surname Suffix | MOMMSUFX| [PatientMotherVitalRecords]|name.suffix, <br />name.use = maiden | string |  | B | 
| 262 | Residence Street Number | STNUM| [PatientMotherVitalRecords]|address.extension[stnum] | string |  | B | 
| 263 | Residence Pre Directional | PREDIR| [PatientMotherVitalRecords]|address.extension[predir] | string |  | B | 
| 264 | Residence Street name | STNAME| [PatientMotherVitalRecords]|address.extension[stname] | string |  | B | 
| 265 | Residence Street designator | STDESIG| [PatientMotherVitalRecords]|address.extension[stdesig] | string |  | B | 
| 266 | Residence Post Directional | POSTDIR| [PatientMotherVitalRecords]|address.extension[postdir] | string |  | B | 
| 267 | Residence Unit or Apartment Number | UNUM| [PatientMotherVitalRecords]|address.extension[unitnum] | string |  | B | 
| 268 | Mother's Residence Street Address | ADDRESS| [PatientMotherVitalRecords]|address.line | string |  | B | 
| 269 | Mother's Residence Zip Code and Zip+4 | ZIPCODE| [PatientMotherVitalRecords]|address.postalCode | string |  | B | 
| 270 | Mother's Residence County (Literal) | COUNTYTXT| [PatientMotherVitalRecords]|address.district | string |  | B | 
| 271 | Mother's Residence City/Town (Literal) | CITYTEXT| [PatientMotherVitalRecords]|address.city | string |  | B | 
| 272 | State, U.S. Territory or Canadian Province of Residence (Mother) - literal | STATETXT| [PatientMotherVitalRecords]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | B | 
| 273 | Mother's Residence Country (Literal) | CNTRYTXT| [PatientMotherVitalRecords]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | B | 
| 278 | Mother's Social Security Number | MOM_SSN| [PatientMotherVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”SS”  | string |  | B | 
| 305 | State, U.S. Territory or Canadian Province of Birth (Mother) - literal | MBPLACE_ST_TER_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | See [StateLiterals] | B | 
| 306 | Mother's Country of Birth (Literal) | MBPLACE_CNTRY_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country (expanded from 2 letter code) | string | See [CountryLiterals] | B | 
| 309 | Mother's Mailing Address Street number | MAIL_STNUM| [PatientMotherVitalRecords]|address.extension[stnum] | string |  | B | 
| 310 | Mother's Mailing Address Pre Directional | MAIL_PREDIR| [PatientMotherVitalRecords]|address.extension[predir] | string |  | B | 
| 311 | Mother's Mailing Address Street name | MAIL_STNAME| [PatientMotherVitalRecords]|address.extension[stname] | string |  | B | 
| 312 | Mother's Mailing Address Street designator | MAIL_STDESIG| [PatientMotherVitalRecords]|address.extension[stdesig] | string |  | B | 
| 313 | Mother's Mailing Address Post Directional | MAIL_POSTDIR| [PatientMotherVitalRecords]|address.extension[postdir] | string |  | B | 
| 314 | Mother's Mailing Address Unit or Apartment Number | MAIL_UNUM| [PatientMotherVitalRecords]|address.extension[unitnum] | string |  | B | 
| 315 | Mother's Mailing Address Street Address | MAIL_ADDRESS| [PatientMotherVitalRecords]|address.line | string |  | B | 
| 316 | Mother's Mailing Address Zip Code and Zip+4 | MAIL_ZIPCODE| [PatientMotherVitalRecords]|address.postalCode | string |  | B | 
| 317 | Mother's Mailing Address County (Literal) | MAIL_COUNTYTXT| [PatientMotherVitalRecords]|address.district | string |  | B | 
| 318 | Mother's Mailing Address City/Town (Literal) | MAIL_CITYTEXT| [PatientMotherVitalRecords]|address.city | string |  | B | 
| 319 | Mother's Mailing Address State (Literal) | MAIL_STATETXT| [PatientMotherVitalRecords]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | B | 
| 320 | Mother's Mailing Address Country (Literal) | MAIL_CNTRYTXT| [PatientMotherVitalRecords]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | B | 
| 333 | Mother's Medical Record Number | MOM_MED_REC_NUM| [PatientMotherVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”MR”  | string |  | B | 
| 340 | For use of jurisdictions with domestic partnerships, othertypes of relationships. | MARITAL_DESCRIP| [PatientMotherVitalRecords]|maritalStatus.text | string | codeable.text should show up in differential with description from col F | B | 
| 124 | Attendant Title | ATTEND| [PractitionerVitalRecords]|qualification.code | codeable | [BirthAttendantTitlesVS] | B | 
| 304 | Attendant ("Other" specified text) | ATTEND_OTH_TXT| [PractitionerVitalRecords]|qualification.code.text | string |  | B | 
| 326 | Attendant's Name | ATTEND_NAME| [PractitionerVitalRecords]|name.text | string |  | B | 
| 327 | Attendant's NPI | ATTEND_NPI| [PractitionerVitalRecords]|identifier:NPI | string |  | B | 
| 328 | Certifier's Name | CERTIF_NAME| [PractitionerVitalRecords]|name.text | string |  | B | 
| 329 | Certifier's NPI | CERTIF_NPI| [PractitionerVitalRecords]|identifier:NPI | identifier |  | B | 
| 330 | Certifier Title | CERTIF| [PractitionerVitalRecords]|qualification.code | codeable | [BirthAttendantTitlesVS] | B | 
| 331 | Certifier ("Other" specified text) | CERTIF_OTH_TXT| [PractitionerVitalRecords]|qualification.code.text | string |  | B | 
| 216 | Abnormal Conditions of the Newborn--Antibiotics | ANTI| [ProcedureAntibioticSuspectedNeonatalSepsis]| | na | See [Note on missing abnormal conditions of newborn data] | B | 
| 240 | Risk Factors--Infertility: Fertility Enhancing Drugs  (RECOMMENDED ADDITION EFFECTIVE 2004) | INFT_DRG| [ProcedureArtificialInsemination]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 241 | Risk Factors--Infertility: Asst. Rep. Technology  (RECOMMENDED ADDITION EFFECTIVE 2004) | INFT_ART| [ProcedureAssistedFertilization]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 212 | Abnormal Conditions of the Newborn--Assisted Ventilation | AVEN1| [ProcedureAssistedVentilationFollowingDelivery]| | na | See [Note on missing abnormal conditions of newborn data] | B | 
| 213 | Abnormal Conditions of the Newborn--Assisted Ventilation > 6 hours | AVEN6| [ProcedureAssistedVentilationMoreThanSixHours]| | na | See [Note on missing abnormal conditions of newborn data] | B | 
| 182 | Characteristics of Labor & Delivery--Augmentation of Labor | AUGL| [ProcedureAugmentationOfLabor]| | na | See [Note on missing characteristics of labor and delivery data] | B | 
| 195 | Maternal Morbidity--Maternal Transfusion | MTR| [ProcedureBloodTransfusion]| | na | See [Note on missing maternal morbidity data] | B | 
| 189 | Characteristics of Labor & Delivery--Anesthesia | ESAN| [ProcedureEpiduralOrSpinalAnesthesia]| | na | See [Note on missing characteristics of labor and delivery data] | B | 
| 193 | Method of Delivery--Route and Method of Delivery | ROUT| [ProcedureFinalRouteMethodDelivery]|code | codeable | [DeliveryRoutesVS] | B | 
| 181 | Characteristics of Labor & Delivery--Induction of Labor | INDL| [ProcedureInductionOfLabor]| | na | See [Note on missing characteristics of labor and delivery data] | B | 
| 164 | Risk Factors--Infertility Treatment  (SEE ADDITIONAL SUBCATEGORIES IN LOCATIONS 925-926) | INFT| [ProcedureInfertilityTreatment]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 176 | Obstetric Procedures--Successful External Cephalic Version | ECVS| [ProcedureObstetric]|code=240278000 (External cephalic version (procedure)), <br />outcome=385669000 (Successful (qualifier value)) | codeable | [ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. <br />Discussion needed: Is ECVF always the complement of ECVS?   <br />If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? | B | 
| 177 | Obstetric Procedures--Failed External Cephalic Version | ECVF| [ProcedureObstetric]|code=240278000 (External cephalic version (procedure)), <br />outcome=385671000 (Unsuccessful (qualifier value)) | codeable | [ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. <br />Discussion needed: Is ECVF always the complement of ECVS?   <br />If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? | B | 
| 215 | Abnormal Conditions of the Newborn--Surfactant Replacement | SURF| [ProcedureSurfactantReplacementTherapy]| | na | See [Note on missing abnormal conditions of newborn data] | B | 
| 198 | Maternal Morbidity--Unplanned Hysterectomy | UHYS| [ProcedureUnplannedHysterectomy]| | na | See [Note on missing maternal morbidity data] | B | 
| 28 | Date of Birth (Father)--Edit Flag | FAGE_BYPASS| [RelatedPersonFatherVitalRecords]|birthDate.extension[bypassEditFlag].value | codeable | [MothersDateOfBirthEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 342 | Blank for One-Byte Field 1 | PLACE1_1| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_1].value | string(1) |  | B | 
| 343 | Blank for One-Byte Field 2 | PLACE1_2| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_2].value | string(1) |  | B | 
| 344 | Blank for One-Byte Field 3 | PLACE1_3| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_3].value | string(1) |  | B | 
| 345 | Blank for One-Byte Field 4 | PLACE1_4| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_4].value | string(1) |  | B | 
| 346 | Blank for One-Byte Field 5 | PLACE1_5| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_5].value | string(1) |  | B | 
| 347 | Blank for One-Byte Field 6 | PLACE1_6| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_6].value | string(1) |  | B | 
| 348 | Blank for Eight-Byte Field 1 | PLACE8_1| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue8_1].value | string(8) |  | B | 
| 349 | Blank for Eight-Byte Field 2 | PLACE8_2| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue8_2].value | string(8) |  | B | 
| 350 | Blank for Eight-Byte Field 3 | PLACE8_3| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue8_3].value | string(8) |  | B | 
| 351 | Blank for Twenty-Byte Field | PLACE20| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue20].value | string(20) |  | B | 
{: .grid }
#### Coded Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set/Comments** | **Unique to Provider Report (P), Jurisdiction Report (J), Both (B), or Neither (N)** |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- | ---- |
| 62 | Mother's Race Tabulation Variable 1E | MRACE1E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 63 | Mother's Race Tabulation Variable 2E | MRACE2E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 64 | Mother's Race Tabulation Variable 3E | MRACE3E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[ThirdEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 65 | Mother's Race Tabulation Variable 4E | MRACE4E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FourthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 66 | Mother's Race Tabulation Variable 5E | MRACE5E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FifthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 67 | Mother's Race Tabulation Variable 6E | MRACE6E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SixthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 68 | Mother's Race Tabulation Variable 7E | MRACE7E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SeventhEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 69 | Mother's Race Tabulation Variable 8E | MRACE8E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[EighthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 70 | Mother's Race Tabulation Variable 16C | MRACE16C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 71 | Mother's Race Tabulation Variable 17C | MRACE17C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 72 | Mother's Race Tabulation Variable 18C | MRACE18C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 73 | Mother's Race Tabulation Variable 19C | MRACE19C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 74 | Mother's Race Tabulation Variable 20C | MRACE20C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 75 | Mother's Race Tabulation Variable 21C | MRACE21C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 76 | Mother's Race Tabulation Variable 22C | MRACE22C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 77 | Mother's Race Tabulation Variable 23C | MRACE23C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 108 | Father's Race Tabulation Variable 1E | FRACE1E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 109 | Father's Race Tabulation Variable 2E | FRACE2E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 110 | Father's Race Tabulation Variable 3E | FRACE3E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[ThirdEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 111 | Father's Race Tabulation Variable 4E | FRACE4E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FourthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 112 | Father's Race Tabulation Variable 5E | FRACE5E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FifthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 113 | Father's Race Tabulation Variable 6E | FRACE6E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SixthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 114 | Father's Race Tabulation Variable 7E | FRACE7E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SeventhEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 115 | Father's Race Tabulation Variable 8E | FRACE8E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[EighthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 116 | Father's Race Tabulation Variable 16C | FRACE16C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 117 | Father's Race Tabulation Variable 17C | FRACE17C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 118 | Father's Race Tabulation Variable 18C | FRACE18C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 119 | Father's Race Tabulation Variable 19C | FRACE19C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 120 | Father's Race Tabulation Variable 20C | FRACE20C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 121 | Father's Race Tabulation Variable 21C | FRACE21C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 122 | Father's Race Tabulation Variable 22C | FRACE22C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 123 | Father's Race Tabulation Variable 23C | FRACE23C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 292 | Mother's Hispanic Code for Literal | METHNIC5C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[HispanicCodeForLiteral].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | N | 
| 293 | Mother's Edited Hispanic Origin Code | METHNICE| [ObservationCodedRaceAndEthnicityVitalRecords]|component[HispanicCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | N | 
| 295 | Father's Hispanic Code for Literal | FETHNIC5C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[HispanicCodeForLiteral].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | N | 
| 296 | Father's Edited Hispanic Origin Code | FETHNICE| [ObservationCodedRaceAndEthnicityVitalRecords]|component[HispanicCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | N | 
{: .grid }
#### Not Implemented Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set/Comments** | **Unique to Provider Report (P), Jurisdiction Report (J), Both (B), or Neither (N)** |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- | ---- |
| 4 | Void flag | VOID| [not implemented]| |  |  | - | 
| 29 | Mother Married?--Ever (NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MARE| [not implemented]| |  |  | - | 
| 129 | Date of Last Prenatal Care Visit--Month(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_MO| [not implemented]| |  |  | - | 
| 130 | Date of Last Prenatal Care Visit--Day(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_DY| [not implemented]| |  |  | - | 
| 131 | Date of Last Prenatal Care Visit--Year(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_YR| [not implemented]| |  |  | - | 
| 162 | Risk Factors--Poor Pregnancy Outcomes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PPO| [not implemented]| |  |  | - | 
| 163 | Risk Factors--Vaginal Bleeding  (RECOMMENDED DELETION EFFECTIVE2004) | VB| [not implemented]| |  |  | - | 
| 170 | Infections Present--Herpes Simplex (HSV)  (RECOMMENDED DELETION EFFECTIVE 2004) | HSV| [not implemented]| |  |  | - | 
| 174 | Obstetric Procedures--Cervical Cerclage(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CERV| [not implemented]| |  |  | - | 
| 175 | Obstetric Procedures--Tocolysis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | TOC| [not implemented]| |  |  | - | 
| 178 | Onset of Labor--Premature Rupture of Membranes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PROM| [not implemented]| |  |  | - | 
| 179 | Onset of Labor--Precipitous Labor(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PRIC| [not implemented]| |  |  | - | 
| 180 | Onset of Labor--Prolonged Labor(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PROL| [not implemented]| |  |  | - | 
| 183 | Characteristics of Labor & Delivery--Non-vertex Presentation (NCHS DELETED THIS ITEM EFFECTIVE 2011) | NVPR| [not implemented]| |  |  | - | 
| 187 | Characteristics of Labor & Delivery--Meconium Staining(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MECS| [not implemented]| |  |  | - | 
| 188 | Characteristics of Labor & Delivery--Fetal Intolerance(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | FINT| [not implemented]| |  |  | - | 
| 190 | Method of Delivery--Attempted Forceps (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTF| [not implemented]| |  |  | - | 
| 191 | Method of Delivery--Attempted Vacuum (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTV| [not implemented]| |  |  | - | 
| 200 | Maternal Morbidity--Unplanned Operation(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | UOPR| [not implemented]| |  |  | - | 
| 210 | Matching Number | MATCH| [not implemented]| |  |  | - | 
| 218 | Abnormal Conditions of the Newborn--Birth Injury(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | BINJ| [not implemented]| |  |  | - | 
| 242 | FILLER 1 | *NO IJE MAPPING*| [not implemented]| |  |  | - | 
| 246 | Abnormal Conditions of the Newborn--Microcephaly | MCPH| [not implemented]| |  |  | - | 
| 280 | Mother's Age (Calculated) | MAGE_CALC| [not implemented]| |  |  | - | 
| 281 | Father's Age (Calculated) | FAGE_CALC| [not implemented]| |  |  | - | 
| 283 | Occupation of Mother (coded) | MOM_OC_C| [not implemented]| |  |  | - | 
| 285 | Occupation of Father (coded) | DAD_OC_C| [not implemented]| |  |  | - | 
| 287 | Industry of Mother (coded) | MOM_IN_C| [not implemented]| |  |  | - | 
| 289 | Industry of Father (coded) | DAD_IN_C| [not implemented]| |  |  | - | 
| 294 | Mother's Bridged Race - NCHS Code | MRACEBG_C| [not implemented]| |  |  | - | 
| 297 | Father's Bridged Race - NCHS Code | FRACEBG_C| [not implemented]| |  |  | - | 
| 298 | Mother's Hispanic Origin - Specify | METHNIC_T| [not implemented]| |  |  | - | 
| 299 | Mother's Race - Specify | MRACE_T| [not implemented]| |  |  | - | 
| 300 | Father's Hispanic Origin - Specify | FETHNIC_T| [not implemented]| |  |  | - | 
| 301 | Father's Race - Specify | FRACE_T| [not implemented]| |  |  | - | 
| 322 | SSA/EAB Citizenship Code | SSN_CITIZEN_CD| [not implemented]| |  |  | - | 
| 323 | SSA/EAB Multiple Birth Code | SSN_MULT_BTH_CD| [not implemented]| |  |  | - | 
| 324 | SSA/EAB Feedback Release | SSN_FEEDBACK| [not implemented]| |  |  | - | 
| 325 | SSA/EAB Birth Certificate Number Code | SSN_BRTH_CRT_NO| [not implemented]| |  |  | - | 
| 337 | Date Filed by Registrar--Year | REGISTER_YR| [not implemented]| |  |  | - | 
| 338 | Date Filed by Registrar--Month | REGISTER_MO| [not implemented]| |  |  | - | 
| 339 | Date Filed by Registrar--Day | REGISTER_DY| [not implemented]| |  |  | - | 
| 341 | Replacement (amended) record | REPLACE (*deprecated*)| [not implemented]|Deprecated see [VRFM](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/message.html#successful-death-record-submission ) |  |  | - | 
| 352 | Blank for Future Expansion | BLANK| [not implemented]| |  |  | - | 
| 353 | Blank for Jurisdictional Use Only | BLANK2| [not implemented]| |  |  | - | 
{: .grid }
{% include markdown-link-references.md %}
