Many of the BFDR data elements can be identified using the IJE (Inter-Jurisdictional Exchange) data element names (codes). The IJE codes are used for data exchange among jurisdictions and with authorized data partners, such as National Vital Statistics System (NVSS). The National Center for Health Statistics (NCHS) has implemented IJE codes for exchange of mortality data with jurisdictions via the VRDR IG; however, the use of IJE codes has not yet been implemented for birth and fetal death reporting to NCHS.

The following IJE mappings to locations in FHIR specifications are for information purposes only:
* BFDR: Vital Records Birth and Fetal Death Reporting (this IG)
* VRCPL: [Vital Records Common Profile Library]({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}})
* US CORE: [US Core Implementation Guide, 5.0.1]({{site.data.fhir.ver.hl7fhiruscore}})
* ODH: [Occupational Data for Health]({{site.data.fhir.ver.hl7fhirusodh}})
* FHIR: [extensions](http://hl7.org/fhir/extensions/extension-registry.html)

### Natality (Live Birth) IJE Mapping

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 3 | Certificate Number | FILENO| [CompositionProviderLiveBirthReport]|extension[liveBirthCertificateNumber].value | identifier | Used for Jurisdiction Report and Coded Race and Ethnicity Compositions also | 
| 5 | Auxiliary State file number | AUXNO| [CompositionProviderLiveBirthReport]|extension[liveBirthLocalFileNumber].value | identifier | Used for Jurisdiction Report also | 
| 243 | Date of Registration--Year | DOR_YR| [CompositionProviderLiveBirthReport]|extension[dateFiledByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 244 | Date of Registration--Month | DOR_MO| [CompositionProviderLiveBirthReport]|extension[dateFiledByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 245 | Date of Registration--Day | DOR_DY| [CompositionProviderLiveBirthReport]|extension[dateFiledByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 186 | <nobr>Characteristics of Labor & Delivery--Chorioamnionitis<nobr> | CHOR| [ConditionChorioamnionitis]| | na | See [Note on missing characteristics of labor and delivery data] | 
| 219 | Congenital Anomalies of the Newborn--Anencephaly | ANEN| [ConditionCongenitalAnomalyOfNewborn]|code=89369001 (Anencephalus (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 220 | Congenital Anomalies of the Newborn--Meningomyelocele/Spina Bifida | MNSB| [ConditionCongenitalAnomalyOfNewborn]|code=67531005 (Spina bifida (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 221 | Congenital Anomalies of the Newborn--Cyanotic congenital heart disease | CCHD| [ConditionCongenitalAnomalyOfNewborn]|code=12770006 (Cyanotic congenital heart disease (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 222 | Congenital Anomalies of the Newborn--Congenital diaphragmatic hernia | CDH| [ConditionCongenitalAnomalyOfNewborn]|code=17190001 (Congenital diaphragmatic hernia (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 223 | Congenital Anomalies of the Newborn--Omphalocele | OMPH| [ConditionCongenitalAnomalyOfNewborn]|code=18735004 (Congenital omphalocele (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 224 | Congenital Anomalies of the Newborn--Gastroschisis | GAST| [ConditionCongenitalAnomalyOfNewborn]|code=72951007 (Gastroschisis (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 225 | Congenital Anomalies of the Newborn--Limb Reduction Defect | LIMB| [ConditionCongenitalAnomalyOfNewborn]|code=67341007 (Longitudinal deficiency of limb (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 226 | Congenital Anomalies of the Newborn--Cleft Lip with or without Cleft Palate | CL| [ConditionCongenitalAnomalyOfNewborn]|code=80281008 (Cleft lip (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 227 | Congenital Anomalies of the Newborn--Cleft Palate Alone | CP| [ConditionCongenitalAnomalyOfNewborn]|code=87979003 (Cleft palate (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 228 | Congenital Anomalies of the Newborn--Down Syndrome | DOWT| [ConditionCongenitalAnomalyOfNewborn]|code=70156005 (Anomaly of chromosome pair 21 (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 229 | Congenital Anomalies of the Newborn--Suspected Chromosomal disorder | CDIT| [ConditionCongenitalAnomalyOfNewborn]|code=409709004 (Chromosomal disorder (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 230 | Congenital Anomalies of the Newborn--Hypospadias | HYPO| [ConditionCongenitalAnomalyOfNewborn]|code=416010008 (Hypospadias (disorder)) | na | See [Note on missing congenital anomaly data] | 
| 239 | Risk Factors--Hypertension Eclampsia   (RECOMMENDED ADDITION EFFECTIVE 2004) | EHYPE| [ConditionEclampsiaHypertensionVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 158 | Risk Factors--Gestational Diabetes | GDIAB| [ConditionGestationalDiabetesVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 160 | Risk Factors--Hypertension Gestational   (SEE ADDITIONAL HYPERTENSION CATEGORY IN LOCATION 924 TO REFLECT RECOMMENDED CHANGES EFFECTIVE 2004) | GHYPE| [ConditionGestationalHypertensionVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 168 | Infections Present--Gonorrhea | GON| [ConditionInfectionPresentDuringPregnancy]|code=15628003 (Gonorrhea (disorder)) | na | See [Note on missing infections present data] | 
| 169 | Infections Present--Syphilis | SYPH| [ConditionInfectionPresentDuringPregnancy]|code=76272004 (Syphilis (disorder)) | na | See [Note on missing infections present data] | 
| 171 | Infections Present--Chlamydia | CHAM| [ConditionInfectionPresentDuringPregnancy]|code=105629000 (Chlamydial infection (disorder)) | na | See [Note on missing infections present data] | 
| 172 | Infections Present--Hepatitis B | HEPB| [ConditionInfectionPresentDuringPregnancy]|code=66071002 (Viral hepatitis type B (disorder)) | na | See [Note on missing infections present data] | 
| 173 | Infections Present--Hepatitis C | HEPC| [ConditionInfectionPresentDuringPregnancy]|code=50711007 (Viral hepatitis type C (disorder)) | na | See [Note on missing infections present data] | 
| Not Mapped | Infections Present--Genital herpes simplex | Not Mapped| [ConditionInfectionPresentDuringPregnancy]|code=33839006 (Genital herpes simplex (disorder)) | na | Michigan state-specific requirement. | 
| 196 | <nobr>Maternal Morbidity--Perineal Laceration</nobr> | PLAC| [ConditionPerinealLaceration]| | na | See [Note on missing maternal morbidity data] | 
| 157 | Risk Factors--Prepregnancy Diabetes | PDIAB| [ConditionPrepregnancyDiabetesVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 159 | Risk Factors--Prepregnancy Hypertension  | PHYPE| [ConditionPrepregnancyHypertensionVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 197 | Maternal Morbidity--Ruptured Uterus | RUT| [ConditionRupturedUterus]| | na | See [Note on missing maternal morbidity data] | 
| 217 | Abnormal Conditions of the Newborn--Seizures | SEIZ| [ConditionSeizure]| | na | See [Note on missing abnormal conditions of newborn data] | 
| 153 | Principal source of Payment for this delivery | PAY| [CoveragePrincipalPayerDelivery]|type | codeable | [ValueSetBirthAndFetalDeathFinancialClass]  | 
| 125 | Mother Transferred? | TRAN| [Encounter_Maternity]|hospitalization.admitSource = "hosp-trans" | codeable | [HL7EncounterAdmitSourceVS](http://hl7.org/fhir/ValueSet/encounter-admit-source), <br />See [Note on missing data]. <br />Need to discuss - clarity needed for values other than 'hosp-trans' | 
| 302 | Facility Mother Moved From (if transferred) | HOSPFROM| [Encounter_Maternity]|hospitalization.origin.name | string |  | 
| 11 | Place Where Birth Occurred (type of place or institution) | BPLACE| [EncounterBirth]|location.physicalType | codeable | [ValueSetBirthDeliveryOccurred] | 
| 12 | Facility ID (NPI) - if available | FNPI| [EncounterBirth]|location.location.id | string |  | 
| 13 | Facility ID (State-Assigned) | SFN| [EncounterBirth]|location.location.identifier | Identifier |  | 
| 231 | Was Infant Transferred Within 24 Hours of Delivery? | ITRAN| [EncounterBirth]|hospitalization.dischargeDisposition="other-hcf" | codeable | [USCoreDischargeDispositionVS](http://hl7.org/fhir/us/core/ValueSet/us-core-discharge-disposition). <br />See [Note on missing data]. <br />Need to discuss - clarity needed for values other than 'other-hcf' | 
| 253 | Name of Facility of Birth | HOSP| [EncounterBirth]|location.location.name | string |  | 
| 303 | Facility Infant Transferred To (if transferred w/in 24 hours) | HOSPTO| [EncounterBirth]|hospitalization.destination.name | string |  | 
| 334 | Date Signed by Certifier--Year | CERTIFIED_YR| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 335 | Date Signed by Certifier--Month | CERTIFIED_MO| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 336 | Date Signed by Certifier--Day | CERTIFIED_DY| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 34 | Mother of Hispanic Origin?--Mexican | METHNIC1| [InputRaceAndEthnicity]|component[ HispanicMexican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 35 | Mother of Hispanic Origin?--Puerto Rican | METHNIC2| [InputRaceAndEthnicity]|component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 36 | Mother of Hispanic Origin?--Cuban | METHNIC3| [InputRaceAndEthnicity]|component[ HispanicCuban ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 37 | Mother of Hispanic Origin?--Other | METHNIC4| [InputRaceAndEthnicity]|component[ HispanicOther ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 38 | Mother of Hispanic Origin?--Other Literal | METHNIC5| [InputRaceAndEthnicity]|component[ HispanicLiteral ].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 39 | Mother's Race--White | MRACE1| [InputRaceAndEthnicity]|component[ White].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 40 | Mother's Race--Black or African American | MRACE2| [InputRaceAndEthnicity]|component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 41 | Mother's Race--American Indian or Alaska Native | MRACE3| [InputRaceAndEthnicity]|component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 42 | Mother's Race--Asian Indian | MRACE4| [InputRaceAndEthnicity]|component[ AsianIndian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 43 | Mother's Race--Chinese | MRACE5| [InputRaceAndEthnicity]|component[ Chinese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 44 | Mother's Race--Filipino | MRACE6| [InputRaceAndEthnicity]|component[ Filipino].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 45 | Mother's Race--Japanese | MRACE7| [InputRaceAndEthnicity]|component[ Japanese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 46 | Mother's Race--Korean | MRACE8| [InputRaceAndEthnicity]|component[ Korean].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 47 | Mother's Race--Vietnamese | MRACE9| [InputRaceAndEthnicity]|component[ Vietnamese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 48 | Mother's Race--Other Asian | MRACE10| [InputRaceAndEthnicity]|component[ OtherAsian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 49 | Mother's Race--Native Hawaiian | MRACE11| [InputRaceAndEthnicity]|component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 50 | Mother's Race--Guamanian or Chamorro | MRACE12| [InputRaceAndEthnicity]|component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 51 | Mother's Race--Samoan | MRACE13| [InputRaceAndEthnicity]|component[ Samoan].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 52 | Mother's Race--Other Pacific Islander | MRACE14| [InputRaceAndEthnicity]|component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 53 | Mother's Race--Other | MRACE15| [InputRaceAndEthnicity]|component[ OtherRace].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 54 | Mother's Race--First American Indian or Alaska Native Literal | MRACE16| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 55 | Mother's Race--Second American Indian or Alaska Native Literal | MRACE17| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 56 | Mother's Race--First Other Asian Literal | MRACE18| [InputRaceAndEthnicity]|component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 57 | Mother's Race--Second Other Asian Literal | MRACE19| [InputRaceAndEthnicity]|component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 58 | Mother's Race--First Other Pacific Islander Literal | MRACE20| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 59 | Mother's Race--Second Other Pacific Islander Literal | MRACE21| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 60 | Mother's Race--First Other Literal | MRACE22| [InputRaceAndEthnicity]|component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 61 | Mother's Race--Second Other Literal | MRACE23| [InputRaceAndEthnicity]|component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 80 | Father of Hispanic Origin?--Mexican | FETHNIC1| [InputRaceAndEthnicity]|component[ HispanicMexican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 81 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2| [InputRaceAndEthnicity]|component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 82 | Father of Hispanic Origin?--Cuban | FETHNIC3| [InputRaceAndEthnicity]|component[ HispanicCuban ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 83 | Father of Hispanic Origin?--Other | FETHNIC4| [InputRaceAndEthnicity]|component[ HispanicOther ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 84 | Father of Hispanic Origin?--Other Literal | FETHNIC5| [InputRaceAndEthnicity]|component[ HispanicLiteral ].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 85 | Father's Race--White | FRACE1| [InputRaceAndEthnicity]|component[ White].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 86 | Father's Race--Black or African American | FRACE2| [InputRaceAndEthnicity]|component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 87 | Father's Race--American Indian or Alaska Native | FRACE3| [InputRaceAndEthnicity]|component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 88 | Father's Race--Asian Indian | FRACE4| [InputRaceAndEthnicity]|component[ AsianIndian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 89 | Father's Race--Chinese | FRACE5| [InputRaceAndEthnicity]|component[ Chinese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 90 | Father's Race--Filipino | FRACE6| [InputRaceAndEthnicity]|component[ Filipino].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 91 | Father's Race--Japanese | FRACE7| [InputRaceAndEthnicity]|component[ Japanese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 92 | Father's Race--Korean | FRACE8| [InputRaceAndEthnicity]|component[ Korean].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 93 | Father's Race--Vietnamese | FRACE9| [InputRaceAndEthnicity]|component[ Vietnamese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 94 | Father's Race--Other Asian | FRACE10| [InputRaceAndEthnicity]|component[ OtherAsian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 95 | Father's Race--Native Hawaiian | FRACE11| [InputRaceAndEthnicity]|component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 96 | Father's Race--Guamanian or Chamorro | FRACE12| [InputRaceAndEthnicity]|component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 97 | Father's Race--Samoan | FRACE13| [InputRaceAndEthnicity]|component[ Samoan].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 98 | Father's Race--Other Pacific Islander | FRACE14| [InputRaceAndEthnicity]|component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 99 | Father's Race--Other | FRACE15| [InputRaceAndEthnicity]|component[ OtherRace].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 100 | Father's Race--First American Indian or Alaska Native Literal | FRACE16| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 101 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 102 | Father's Race--First Other Asian Literal | FRACE18| [InputRaceAndEthnicity]|component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 103 | Father's Race--Second Other Asian Literal | FRACE19| [InputRaceAndEthnicity]|component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 104 | Father's Race--First Other Pacific Islander Literal | FRACE20| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 105 | Father's Race--Second Other Pacific Islander Literal | FRACE21| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 106 | Father's Race--First Other Literal | FRACE22| [InputRaceAndEthnicity]|component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 107 | Father's Race--Second Other Literal | FRACE23| [InputRaceAndEthnicity]|component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 185 | Characteristics of Labor & Delivery--Antibiotics | ANTB| [ObservationAntibioticsAdministeredDuringLabor]| | na | See [Note on missing characteristics of labor and delivery data] | 
| 205 | Apgar Score at 5 Minutes | APGAR5| [ObservationApgarScoreVitalRecords]|value, <br />code = 9274-2 (5 minute Apgar Score) | integer | [ValueSetApgarTimingVitalRecords] | 
| 206 | Apgar Score at 10 Minutes | APGAR10| [ObservationApgarScoreVitalRecords]|value, <br />code = 9271-8 (10 minute Apgar Score) | integer | [ValueSetApgarTimingVitalRecords] | 
| 201 | Birthweight in grams | BWG| [ObservationBirthWeightVitalRecords]|value | quantity |  | 
| 149 | Number of Cigarettes Smoked in 3 months prior to Pregnancy | CIGPN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=64794-1 (In the 3 months before you got pregnant, <br />how many cigarettes did you smoke on an average day) | integer |  | 
| 150 | Number of Cigarettes Smoked in 1st 3 months | CIGFN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=87298-6 (Cigarettes smoked per day by Mother--1st trimester) | integer |  | 
| 151 | Number of Cigarettes Smoked in 2nd 3 months | CIGSN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=87299-4 (Cigarettes smoked per day by Mother--2nd trimester) | integer |  | 
| 152 | Number of Cigarettes Smoked in  third trimester (RECOMMENDED CHANGE EFFECTIVE 2004) | CIGLN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=64795-8 (In the last 3 months of your pregnancy, how many cigarettes did you smoke on an average day) | integer |  | 
| 126 | Date of First Prenatal Care Visit--Month | DOFP_MO| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 127 | Date of First Prenatal Care Visit--Day | DOFP_DY| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 128 | Date of First Prenatal Care Visit--Year | DOFP_YR| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 145 | Date of Last Live Birth--Month | MLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 146 | Date of Last Live Birth--Year | YLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 147 | Date of Last Other Pregnancy Outcome--Month | MOPO| [ObservationDateOfLastOtherPregnancyOutcome]|value | dateTime | See [PartialDatesAndTimes] | 
| 148 | Date of Last Other Pregnancy Outcome--Year | YOPO| [ObservationDateOfLastOtherPregnancyOutcome]|value | dateTime | See [PartialDatesAndTimes] | 
| 202 | Birthweight--Edit Flag | BW_BYPASS| [ObservationEditFlagBirthweight]|value | codeable | [PHVS_BirthWeightEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 204 | Obstetric Estimation of Gestation--Edit Flag | OWGEST_BYPASS| [ObservationEditFlagEstimateOfGestation]|value | codeable | [PHVS_EstimateOf GestationEditFlags_NCHS], <br />See [Handling of edit flags]  | 
| 28 | Date of Birth (Father)--Edit Flag | FAGE_BYPASS| [ObservationEditFlagFathersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 79 | Father's Education--Edit Flag | FEDUC_BYPASS| [ObservationEditFlagFathersEducation]|value | codeable | [PHVS_EducationLevelEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 17 | Date of Birth (Mother)--Edit Flag | MAGE_BYPASS| [ObservationEditFlagMothersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 140 | Mother's Weight at Delivery--Edit Flag | DWGT_BYPASS| [ObservationEditFlagMothersDeliveryWeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 33 | Mother's Education--Edit Flag | MEDUC_BYPASS| [ObservationEditFlagMothersEducation]|value | codeable | [PHVS_EditFlags_NCHS], <br />why does this not use same edit flag as father's education [PHVS_EducationLevelEditFlags_NCHS]?  <br />See [Handling of edit flags] | 
| 136 | Mother's Height--Edit Flag | HGT_BYPASS| [ObservationEditFlagMothersHeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], <br />See [Handling of edit flags]  | 
| 138 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS| [ObservationEditFlagMothersPrepregnancyWeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 133 | <nobr>Total Number of Prenatal Care Visits--Edit Flag<nobr> | NPREV_BYPASS| [ObservationEditFlagNumberPrenatalCareVisits]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], <br />See [Handling of edit flags]  | 
| 167 | Risk Factors--Number Previous Cesareans--Edit Flag | NPCES_BYPASS| [ObservationEditFlagNumberPreviousCesareans]|value | codeable | [PHVS_NumberOfPreviousCesareansEditFlags_NCHS], <br />See [Handling of edit flags]  | 
| 211 | Plurality--Edit Flag | PLUR_BYPASS| [ObservationEditFlagPlurality]|value | codeable | [PHVS_PluralityEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 192 | Method of Delivery--Fetal Presentation | PRES| [ObservationFetalPresentation]|value | codeable | [ValueSetFetalPresentations] | 
| 203 | Obstetric Estimation of Gestation | OWGEST| [ObservationGestationalAgeAtDeliveryVitalRecords]|value | quantity |  | 
| 199 | Maternal Morbidity--Admit to Intensive Care | AINT| [ObservationICUAdmission]| | na | See [Note on missing maternal morbidity data] | 
| 233 | Is Infant Being Breastfed at discharge? (RECOMMENDED CHANGE EFFECTIVE 2004) | BFED| [ObservationInfantBreastfedAtDischarge]|value | boolean | Discussion needed: IJE values are Y, N, U. However, encoding with Boolean does not capture Unknown | 
| 232 | Is Infant Living at Time of Report? | ILIV| [ObservationInfantLivingVitalRecords]|value | boolean | Discussion needed: IJE values are Y, N, U. However, encoding with Boolean does not capture Unknown | 
| 194 | Method of Delivery--Trial of Labor Attempted | TLAB| [ObservationLaborTrialAttempted]|value | boolean | Discussion needed: IJE values are Y, N, U, and X (not applicable). However, encoding with Boolean does not capture Unknown or Not Applicable | 
| 154 | Date Last Normal Menses Began--Year | DLMP_YR| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 155 | Date Last Normal Menses Began--Month | DLMP_MO| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 156 | Date Last Normal Menses Began--Day | DLMP_DY| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 139 | Mother's Weight at Delivery (in whole pounds) | DWGT| [ObservationMotherDeliveryWeightVitalRecords]|value | quantity |  | 
| 134 | Mother's Height--Feet | HFT| [ObservationMotherHeightVitalRecords]|value | quantity |  | 
| 135 | Mother's Height--Inches | HIN| [ObservationMotherHeightVitalRecords]|value | quantity |  | 
| 30 | Mother Married?-- At Conception, at Birth or any Time in Between | MARN| [ObservationMotherMarriedDuringPregnancy]|value | codeable | [ValueSetYesNoUnknownVitalRecords] | 
| 137 | Mother's Prepregnancy Weight (in whole pounds) | PWGT| [ObservationMotherPrepregnancyWeightVitalRecords]|value | quantity |  | 
| 141 | Did Mother get WIC Food for Herself? | WIC| [ObservationMotherReceivedWICFood]|value | codeable | [ValueSetYesNoUnknownVitalRecords] | 
| 214 | Abnormal Conditions of the Newborn--Admission to NICU | NICU| [ObservationNICUAdmission]| | na | See [Note on missing abnormal conditions of newborn data] | 
| 143 | Previous Live Births Now Dead | PLBD| [ObservationNumberBirthsNowDeadVitalRecords]|value | integer |  | 
| 142 | Previous Live Births Now Living | PLBL| [ObservationNumberBirthsNowLivingVitalRecords]|value | integer |  | 
| 209 | Number of Live Born | LIVEB| [ObservationNumberLiveBirthsThisDeliveryVitalRecords]|value | integer |  | 
| 144 | Previous Other Pregnancy Outcomes | POPO| [ObservationNumberOtherPregnancyOutcomesVitalRecords]|value | integer |  | 
| 132 | Total Number of Prenatal Care Visits | NPREV| [ObservationNumberPrenatalVisitsVitalRecords]|value | integer |  | 
| 166 | Risk Factors--Number Previous Cesareans | NPCES| [ObservationNumberPreviousCesareansVitalRecords]|value | integer |  | 
| 32 | Mother's Education | MEDUC| [ObservationParentEducationLevelVitalRecords]|value,  <br />focus[ PatientMotherVitalRecords ] | codeable | [EducationLevelVS] | 
| 78 | Father's Education | FEDUC| [ObservationParentEducationLevelVitalRecords]|value, focus[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [EducationLevelVS] | 
| 31 | Mother Married?--Acknowledgement of Paternity Signed | ACKN| [ObservationPaternityAcknowledgementSigned]|value | codeable | [ValueSetYesNoNotApplicableVitalRecords] | 
| 165 | Risk Factors--Previous Cesarean | PCES| [ObservationPreviousCesareanVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 161 | Risk Factors--Previous Preterm Births | PPB| [ObservationPreviousPretermBirthVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 321 | Social Security Number Requested for Child? | SSN_REQ| [ObservationSSNRequestedForChild]|value | boolean |  | 
| 184 | Characteristics of Labor & Delivery--Steroids | STER| [ObservationSteroidsFetalLungMaturation]| | na | See [Note on missing characteristics of labor and delivery data] | 
| 282 | Occupation of Mother | MOM_OC_T| [odh-UsualWork]|value.text | string(40) |  | 
| 284 | Occupation of Father | DAD_OC_T| [odh-UsualWork]|value.text | string(40) |  | 
| 286 | Industry of Mother | MOM_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | 
| 288 | Industry of Father | DAD_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | 
| 234 | NCHS USE ONLY: Receipt date -- Year | R_YR| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 235 | NCHS USE ONLY: Receipt date -- Month | R_MO| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 236 | NCHS USE ONLY: Receipt date -- Day | R_DY| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 1 | Date of Birth (Infant)--Year | IDOB_YR| [PatientChildVitalRecords]|birthDate | date |  | 
| 2 | State, U.S. Territory or Canadian Province of Birth (Infant) - code | BSTATE| [PatientChildVitalRecords]|extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesAndProvincesVS] | 
| 6 | Time of Birth | TB| [PatientChildVitalRecords]|birthDate.extension[patient-birthTime] |  | See [PartialDatesAndTimes] | 
| 7 | Sex | ISEX| [PatientChildVitalRecords]|extension[us-core-birthsex].value | codeable | [USCoreBirthSexVS](http://hl7.org/fhir/us/core/ValueSet/birthsex) | 
| 8 | Date of Birth (Infant)--Month | IDOB_MO| [PatientChildVitalRecords]|birthDate | date |  | 
| 9 | Date of Birth (Infant)--Day | IDOB_DY| [PatientChildVitalRecords]|birthDate | date |  | 
| 10 | County of Birth | CNTYO| [PatientChildVitalRecords]|extension[patient-birthplace].value[x].district.extension[countyCode] | integer | See [CountyCodes] | 
| 207 | Plurality | PLUR| [PatientChildVitalRecords]|extension[patient-multipleBirthTotal].valuePositiveInt | integer |  | 
| 208 | Set Order | SORD| [PatientChildVitalRecords]|multipleBirth[x] | integer |  | 
| 237 | Mother's Reported Age | MAGER| [PatientChildVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, <br />extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=<br />Reference[ PatientMotherVitalRecords ] | quantity |  | 
| 238 | Father's Reported Age | FAGER| [PatientChildVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, <br />extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=<br />Reference[ RelatedPersonFatherNaturalVitalRecords ] | quantity |  | 
| 247 | Child's First Name | KIDFNAME| [PatientChildVitalRecords]|name.given, <br />name.use = official | string |  | 
| 248 | Child's Middle Name | KIDMNAME| [PatientChildVitalRecords]|name.given, <br />name.use = official  | string |  | 
| 249 | Child's Last Name | KIDLNAME| [PatientChildVitalRecords]|name.family, <br />name.use = official | string |  | 
| 250 | Child's Surname Suffix (moved from end) | KIDSUFFX| [PatientChildVitalRecords]|name.suffix, <br />name.use = official | string |  | 
| 251 | County of Birth (Literal) | BIRTH_CO| [PatientChildVitalRecords]|extension[patient-birthPlace].value[x].district | string |  | 
| 252 | City/town/place of birth (Literal) | BRTHCITY| [PatientChildVitalRecords]|extension[patient-birthPlace].value[x].city | string |  | 
| 332 | Infant's Medical Record Number | INF_MED_REC_NUM| [PatientChildVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”MR”  | string |  | 
| 14 | Date of Birth (Mother)--Year | MDOB_YR| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 15 | Date of Birth (Mother)--Month | MDOB_MO| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 16 | Date of Birth (Mother)--Day | MDOB_DY| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 18 | State, U.S. Territory or Canadian Province of Birth (Mother) - code | BPLACEC_ST_TER| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesAndProvincesVS] | 
| 19 | Birthplace of Mother--Country | BPLACEC_CNT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country  | string | [ResidenceCountryVS] | 
| 20 | Residence of Mother--City | CITYC| [PatientMotherVitalRecords]|address.city.extension[ cityCode ] | integer | See [CityCodes] | 
| 21 | Residence of Mother--County | COUNTYC| [PatientMotherVitalRecords]|address.district.extension[countyCode] | integer | See [CountyCodes] | 
| 22 | State, U.S. Territory or Canadian Province of Residence (Mother) - code | STATEC| [PatientMotherVitalRecords]|address.state | string | [StatesTerritoriesAndProvincesVS] | 
| 23 | Residence of Mother--Country | COUNTRYC| [PatientMotherVitalRecords]|address.country | string | [ResidenceCountryVS] | 
| 24 | Residence of Mother--Inside City Limits | LIMITS| [PatientMotherVitalRecords]|address.extension[ withinCityLimitsIndicator ].value | codeable | [ValueSetYesNoUnknownVitalRecords] | 
| 254 | Mother's First Name | MOMFNAME| [PatientMotherVitalRecords]|name.given, <br />name.use = official | string |  | 
| 255 | Mother's Middle Name | MOMMIDDL| [PatientMotherVitalRecords]|name.given, <br />name.use = official  | string |  | 
| 256 | Mother's Last Name | MOMLNAME| [PatientMotherVitalRecords]|name.family, <br />name.use = official | string |  | 
| 257 | Mother's Surname Suffix  | MOMSUFFX| [PatientMotherVitalRecords]|name.suffix, <br />name.use = official  | string |  | 
| 258 | Mother's First Maiden Name | MOMFMNME| [PatientMotherVitalRecords]|name.given, <br />name.use = maiden | string |  | 
| 259 | Mother's Middle Maiden Name | MOMMMID| [PatientMotherVitalRecords]|name.given, <br />name.use = maiden | string |  | 
| 260 | Mother's Maiden Surname | MOMMAIDN| [PatientMotherVitalRecords]|name.family, <br />name.use = maiden | string |  | 
| 261 | Mother's Maiden Surname Suffix | MOMMSUFX| [PatientMotherVitalRecords]|name.suffix, <br />name.use = maiden | string |  | 
| 262 | Residence Street Number | STNUM| [PatientMotherVitalRecords]|address.extension[stnum] | string |  | 
| 263 | Residence Pre Directional | PREDIR| [PatientMotherVitalRecords]|address.extension[predir] | string |  | 
| 264 | Residence Street name | STNAME| [PatientMotherVitalRecords]|address.extension[stname] | string |  | 
| 265 | Residence Street designator | STDESIG| [PatientMotherVitalRecords]|address.extension[stdesig] | string |  | 
| 266 | Residence Post Directional | POSTDIR| [PatientMotherVitalRecords]|address.extension[postdir] | string |  | 
| 267 | Residence Unit or Apartment Number | UNUM| [PatientMotherVitalRecords]|address.extension[unitnum] | string |  | 
| 268 | Mother's Residence Street Address | ADDRESS| [PatientMotherVitalRecords]|address.line | string |  | 
| 269 | Mother's Residence Zip Code and Zip+4 | ZIPCODE| [PatientMotherVitalRecords]|address.postalCode | string |  | 
| 270 | Mother's Residence County (Literal) | COUNTYTXT| [PatientMotherVitalRecords]|address.district | string |  | 
| 271 | Mother's Residence City/Town (Literal) | CITYTEXT| [PatientMotherVitalRecords]|address.city | string |  | 
| 272 | State, U.S. Territory or Canadian Province of Residence (Mother) - literal | STATETXT| [PatientMotherVitalRecords]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 273 | Mother's Residence Country (Literal) | CNTRYTXT| [PatientMotherVitalRecords]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 278 | Mother's Social Security Number | MOM_SSN| [PatientMotherVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”SS”  | string |  | 
| 305 | State, U.S. Territory or Canadian Province of Birth (Mother) - literal | MBPLACE_ST_TER_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | See [StateLiterals] | 
| 306 | Mother's Country of Birth (Literal) | MBPLACE_CNTRY_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 309 | Mother's Mailing Address Street number | MAIL_STNUM| [PatientMotherVitalRecords]|address.extension[stnum] | string |  | 
| 310 | Mother's Mailing Address Pre Directional | MAIL_PREDIR| [PatientMotherVitalRecords]|address.extension[predir] | string |  | 
| 311 | Mother's Mailing Address Street name | MAIL_STNAME| [PatientMotherVitalRecords]|address.extension[stname] | string |  | 
| 312 | Mother's Mailing Address Street designator | MAIL_STDESIG| [PatientMotherVitalRecords]|address.extension[stdesig] | string |  | 
| 313 | Mother's Mailing Address Post Directional | MAIL_POSTDIR| [PatientMotherVitalRecords]|address.extension[postdir] | string |  | 
| 314 | Mother's Mailing Address Unit or Apartment Number | MAIL_UNUM| [PatientMotherVitalRecords]|address.extension[unitnum] | string |  | 
| 315 | Mother's Mailing Address Street Address | MAIL_ADDRESS| [PatientMotherVitalRecords]|address.line | string |  | 
| 316 | Mother's Mailing Address Zip Code and Zip+4 | MAIL_ZIPCODE| [PatientMotherVitalRecords]|address.postalCode | string |  | 
| 317 | Mother's Mailing Address County (Literal) | MAIL_COUNTYTXT| [PatientMotherVitalRecords]|address.district | string |  | 
| 318 | Mother's Mailing Address City/Town (Literal) | MAIL_CITYTEXT| [PatientMotherVitalRecords]|address.city | string |  | 
| 319 | Mother's Mailing Address State (Literal) | MAIL_STATETXT| [PatientMotherVitalRecords]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 320 | Mother's Mailing Address Country (Literal) | MAIL_CNTRYTXT| [PatientMotherVitalRecords]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 333 | Mother's Medical Record Number | MOM_MED_REC_NUM| [PatientMotherVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”MR”  | string |  | 
| 340 | For use of jurisdictions with domestic partnerships, othertypes of relationships. | MARITAL_DESCRIP| [PatientMotherVitalRecords]|maritalStatus.text | string | codeable.text should show up in differential with description from col F | 
| 124 | Attendant Title | ATTEND| [PractitionerVitalRecords]|qualification.code | codeable | [ValueSetBirthAttendantTitles] | 
| 304 | Attendant ("Other" specified text) | ATTEND_OTH_TXT| [PractitionerVitalRecords]|qualification.code.text | string |  | 
| 326 | Attendant's Name | ATTEND_NAME| [PractitionerVitalRecords]|name.text | string |  | 
| 327 | Attendant's NPI | ATTEND_NPI| [PractitionerVitalRecords]|identifier:NPI | string |  | 
| 328 | Certifier's Name | CERTIF_NAME| [PractitionerVitalRecords]|name.text | string |  | 
| 329 | Certifier's NPI | CERTIF_NPI| [PractitionerVitalRecords]|identifier:NPI | identifier |  | 
| 330 | Certifier Title | CERTIF| [PractitionerVitalRecords]|qualification.code | codeable | [ValueSetBirthAttendantTitles] | 
| 331 | Certifier ("Other" specified text) | CERTIF_OTH_TXT| [PractitionerVitalRecords]|qualification.code.text | string |  | 
| 216 | Abnormal Conditions of the Newborn--Antibiotics | ANTI| [ProcedureAntibioticSuspectedNeonatalSepsis]| | na | See [Note on missing abnormal conditions of newborn data] | 
| 240 | Risk Factors--Infertility: Fertility Enhancing Drugs  (RECOMMENDED ADDITION EFFECTIVE 2004) | INFT_DRG| [ProcedureArtificialInseminationVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 241 | Risk Factors--Infertility: Asst. Rep. Technology  (RECOMMENDED ADDITION EFFECTIVE 2004) | INFT_ART| [ProcedureAssistedFertilizationVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 212 | Abnormal Conditions of the Newborn--Assisted Ventilation | AVEN1| [ProcedureAssistedVentilationFollowingDelivery]| | na | See [Note on missing abnormal conditions of newborn data] | 
| 213 | Abnormal Conditions of the Newborn--Assisted Ventilation > 6 hours | AVEN6| [ProcedureAssistedVentilationMoreThanSixHours]| | na | See [Note on missing abnormal conditions of newborn data] | 
| 182 | Characteristics of Labor & Delivery--Augmentation of Labor | AUGL| [ProcedureAugmentationOfLabor]| | na | See [Note on missing characteristics of labor and delivery data] | 
| 195 | Maternal Morbidity--Maternal Transfusion | MTR| [ProcedureBloodTransfusion]| | na | See [Note on missing maternal morbidity data] | 
| 189 | Characteristics of Labor & Delivery--Anesthesia | ESAN| [ProcedureEpiduralOrSpinalAnesthesia]| | na | See [Note on missing characteristics of labor and delivery data] | 
| 193 | Method of Delivery--Route and Method of Delivery | ROUT| [ProcedureFinalRouteMethodDelivery]|code | codeable | [ValueSetDeliveryRoutes] | 
| 181 | Characteristics of Labor & Delivery--Induction of Labor | INDL| [ProcedureInductionOfLabor]| | na | See [Note on missing characteristics of labor and delivery data] | 
| 164 | Risk Factors--Infertility Treatment  (SEE ADDITIONAL SUBCATEGORIES IN LOCATIONS 925-926) | INFT| [ProcedureInfertilityTreatmentVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 176 | Obstetric Procedures--Successful External Cephalic Version | ECVS| [ProcedureObstetric]|code=240278000 (External cephalic version (procedure)), <br />outcome=385669000 (Successful (qualifier value)) | codeable | [ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. <br />Discussion needed: Is ECVF always the complement of ECVS?   <br />If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? | 
| 177 | Obstetric Procedures--Failed External Cephalic Version | ECVF| [ProcedureObstetric]|code=240278000 (External cephalic version (procedure)), <br />outcome=385671000 (Unsuccessful (qualifier value)) | codeable | [ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. <br />Discussion needed: Is ECVF always the complement of ECVS?   <br />If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? | 
| 215 | Abnormal Conditions of the Newborn--Surfactant Replacement | SURF| [ProcedureSurfactantReplacementTherapy]| | na | See [Note on missing abnormal conditions of newborn data] | 
| 198 | Maternal Morbidity--Unplanned Hysterectomy | UHYS| [ProcedureUnplannedHysterectomy]| | na | See [Note on missing maternal morbidity data] | 
{: .grid }
#### Coded Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 62 | Mother's Race Tabulation Variable 1E | MRACE1E| [CodedRaceAndEthnicity]|component[FirstEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 63 | Mother's Race Tabulation Variable 2E | MRACE2E| [CodedRaceAndEthnicity]|component[SecondEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 64 | Mother's Race Tabulation Variable 3E | MRACE3E| [CodedRaceAndEthnicity]|component[ThirdEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 65 | Mother's Race Tabulation Variable 4E | MRACE4E| [CodedRaceAndEthnicity]|component[FourthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 66 | Mother's Race Tabulation Variable 5E | MRACE5E| [CodedRaceAndEthnicity]|component[FifthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 67 | Mother's Race Tabulation Variable 6E | MRACE6E| [CodedRaceAndEthnicity]|component[SixthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 68 | Mother's Race Tabulation Variable 7E | MRACE7E| [CodedRaceAndEthnicity]|component[SeventhEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 69 | Mother's Race Tabulation Variable 8E | MRACE8E| [CodedRaceAndEthnicity]|component[EighthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 70 | Mother's Race Tabulation Variable 16C | MRACE16C| [CodedRaceAndEthnicity]|component[FirstAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 71 | Mother's Race Tabulation Variable 17C | MRACE17C| [CodedRaceAndEthnicity]|component[SecondAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 72 | Mother's Race Tabulation Variable 18C | MRACE18C| [CodedRaceAndEthnicity]|component[FirstOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 73 | Mother's Race Tabulation Variable 19C | MRACE19C| [CodedRaceAndEthnicity]|component[SecondOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 74 | Mother's Race Tabulation Variable 20C | MRACE20C| [CodedRaceAndEthnicity]|component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 75 | Mother's Race Tabulation Variable 21C | MRACE21C| [CodedRaceAndEthnicity]|component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 76 | Mother's Race Tabulation Variable 22C | MRACE22C| [CodedRaceAndEthnicity]|component[FirstOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 77 | Mother's Race Tabulation Variable 23C | MRACE23C| [CodedRaceAndEthnicity]|component[SecondOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 108 | Father's Race Tabulation Variable 1E | FRACE1E| [CodedRaceAndEthnicity]|component[FirstEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 109 | Father's Race Tabulation Variable 2E | FRACE2E| [CodedRaceAndEthnicity]|component[SecondEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 110 | Father's Race Tabulation Variable 3E | FRACE3E| [CodedRaceAndEthnicity]|component[ThirdEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 111 | Father's Race Tabulation Variable 4E | FRACE4E| [CodedRaceAndEthnicity]|component[FourthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 112 | Father's Race Tabulation Variable 5E | FRACE5E| [CodedRaceAndEthnicity]|component[FifthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 113 | Father's Race Tabulation Variable 6E | FRACE6E| [CodedRaceAndEthnicity]|component[SixthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 114 | Father's Race Tabulation Variable 7E | FRACE7E| [CodedRaceAndEthnicity]|component[SeventhEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 115 | Father's Race Tabulation Variable 8E | FRACE8E| [CodedRaceAndEthnicity]|component[EighthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 116 | Father's Race Tabulation Variable 16C | FRACE16C| [CodedRaceAndEthnicity]|component[FirstAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 117 | Father's Race Tabulation Variable 17C | FRACE17C| [CodedRaceAndEthnicity]|component[SecondAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 118 | Father's Race Tabulation Variable 18C | FRACE18C| [CodedRaceAndEthnicity]|component[FirstOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 119 | Father's Race Tabulation Variable 19C | FRACE19C| [CodedRaceAndEthnicity]|component[SecondOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 120 | Father's Race Tabulation Variable 20C | FRACE20C| [CodedRaceAndEthnicity]|component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 121 | Father's Race Tabulation Variable 21C | FRACE21C| [CodedRaceAndEthnicity]|component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 122 | Father's Race Tabulation Variable 22C | FRACE22C| [CodedRaceAndEthnicity]|component[FirstOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 123 | Father's Race Tabulation Variable 23C | FRACE23C| [CodedRaceAndEthnicity]|component[SecondOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 292 | Mother's Hispanic Code for Literal | METHNIC5C| [CodedRaceAndEthnicity]|component[HispanicCodeForLiteral].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | 
| 293 | Mother's Edited Hispanic Origin Code | METHNICE| [CodedRaceAndEthnicity]|component[HispanicCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | 
| 295 | Father's Hispanic Code for Literal | FETHNIC5C| [CodedRaceAndEthnicity]|component[HispanicCodeForLiteral].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | 
| 296 | Father's Edited Hispanic Origin Code | FETHNICE| [CodedRaceAndEthnicity]|component[HispanicCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | 
{: .grid }
#### Not Implemented Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 342 | Blank for One-Byte Field 1 | PLACE1_1| [EmergingIssues]|component[EmergingIssue1_1].value | string(1) | formerly not implemented, used VRDR as example | 
| 343 | Blank for One-Byte Field 2 | PLACE1_2| [EmergingIssues]|component[EmergingIssue1_2].value | string(1) | formerly not implemented, used VRDR as example | 
| 344 | Blank for One-Byte Field 3 | PLACE1_3| [EmergingIssues]|component[EmergingIssue1_3].value | string(1) | formerly not implemented, used VRDR as example | 
| 345 | Blank for One-Byte Field 4 | PLACE1_4| [EmergingIssues]|component[EmergingIssue1_4].value | string(1) | formerly not implemented, used VRDR as example | 
| 346 | Blank for One-Byte Field 5 | PLACE1_5| [EmergingIssues]|component[EmergingIssue1_5].value | string(1) | formerly not implemented, used VRDR as example | 
| 347 | Blank for One-Byte Field 6 | PLACE1_6| [EmergingIssues]|component[EmergingIssue1_6].value | string(1) | formerly not implemented, used VRDR as example | 
| 348 | Blank for Eight-Byte Field 1 | PLACE8_1| [EmergingIssues]|component[EmergingIssue8_1].value | string(8) | formerly not implemented, used VRDR as example | 
| 349 | Blank for Eight-Byte Field 2 | PLACE8_2| [EmergingIssues]|component[EmergingIssue8_2].value | string(8) | formerly not implemented, used VRDR as example | 
| 350 | Blank for Eight-Byte Field 3 | PLACE8_3| [EmergingIssues]|component[EmergingIssue8_3].value | string(8) | formerly not implemented, used VRDR as example | 
| 351 | Blank for Twenty-Byte Field | PLACE20| [EmergingIssues]|component[EmergingIssue20].value | string(20) | formerly not implemented, used VRDR as example | 
| 4 | Void flag | VOID| [not implemented]| |  |  | 
| 29 | Mother Married?--Ever (NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MARE| [not implemented]| |  |  | 
| 129 | Date of Last Prenatal Care Visit--Month(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_MO| [not implemented]| |  |  | 
| 130 | Date of Last Prenatal Care Visit--Day(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_DY| [not implemented]| |  |  | 
| 131 | Date of Last Prenatal Care Visit--Year(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_YR| [not implemented]| |  |  | 
| 162 | Risk Factors--Poor Pregnancy Outcomes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PPO| [not implemented]| |  |  | 
| 163 | Risk Factors--Vaginal Bleeding  (RECOMMENDED DELETION EFFECTIVE2004) | VB| [not implemented]| |  |  | 
| 170 | Infections Present--Herpes Simplex (HSV)  (RECOMMENDED DELETION EFFECTIVE 2004) | HSV| [not implemented]| |  |  | 
| 174 | Obstetric Procedures--Cervical Cerclage(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CERV| [not implemented]| |  |  | 
| 175 | Obstetric Procedures--Tocolysis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | TOC| [not implemented]| |  |  | 
| 178 | Onset of Labor--Premature Rupture of Membranes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PROM| [not implemented]| |  |  | 
| 179 | Onset of Labor--Precipitous Labor(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PRIC| [not implemented]| |  |  | 
| 180 | Onset of Labor--Prolonged Labor(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PROL| [not implemented]| |  |  | 
| 183 | Characteristics of Labor & Delivery--Non-vertex Presentation (NCHS DELETED THIS ITEM EFFECTIVE 2011) | NVPR| [not implemented]| |  |  | 
| 187 | Characteristics of Labor & Delivery--Meconium Staining(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MECS| [not implemented]| |  |  | 
| 188 | Characteristics of Labor & Delivery--Fetal Intolerance(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | FINT| [not implemented]| |  |  | 
| 190 | Method of Delivery--Attempted Forceps (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTF| [not implemented]| |  |  | 
| 191 | Method of Delivery--Attempted Vacuum (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTV| [not implemented]| |  |  | 
| 200 | Maternal Morbidity--Unplanned Operation(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | UOPR| [not implemented]| |  |  | 
| 210 | Matching Number | MATCH| [not implemented]| |  |  | 
| 218 | Abnormal Conditions of the Newborn--Birth Injury(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | BINJ| [not implemented]| |  |  | 
| 242 | FILLER 1 | *NO IJE MAPPING*| [not implemented]| |  |  | 
| 246 | Abnormal Conditions of the Newborn--Microcephaly | MCPH| [not implemented]| |  |  | 
| 280 | Mother's Age (Calculated) | MAGE_CALC| [not implemented]| |  |  | 
| 281 | Father's Age (Calculated) | FAGE_CALC| [not implemented]| |  |  | 
| 283 | Occupation of Mother (coded) | MOM_OC_C| [not implemented]| |  |  | 
| 285 | Occupation of Father (coded) | DAD_OC_C| [not implemented]| |  |  | 
| 287 | Industry of Mother (coded) | MOM_IN_C| [not implemented]| |  |  | 
| 289 | Industry of Father (coded) | DAD_IN_C| [not implemented]| |  |  | 
| 322 | SSA/EAB Citizenship Code | SSN_CITIZEN_CD| [not implemented]| |  |  | 
| 323 | SSA/EAB Multiple Birth Code | SSN_MULT_BTH_CD| [not implemented]| |  |  | 
| 324 | SSA/EAB Feedback Release | SSN_FEEDBACK| [not implemented]| |  |  | 
| 325 | SSA/EAB Birth Certificate Number Code | SSN_BRTH_CRT_NO| [not implemented]| |  |  | 
| 337 | Date Filed by Registrar--Year | REGISTER_YR| [not implemented]| |  |  | 
| 338 | Date Filed by Registrar--Month | REGISTER_MO| [not implemented]| |  |  | 
| 339 | Date Filed by Registrar--Day | REGISTER_DY| [not implemented]| |  |  | 
| 341 | Replacement (amended) record | REPLACE (*deprecated*)| [not implemented]|Deprecated see [VRFM](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/message.html#successful-death-record-submission ) |  |  | 
| 352 | Blank for Future Expansion | BLANK| [not implemented]| |  |  | 
| 353 | Blank for Jurisdictional Use Only | BLANK2| [not implemented]| |  |  | 
{: .grid }
{% include markdown-link-references.md %}
### Fetal Death IJE Mapping

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 3 | Certificate Number | FILENO| [CompositionProviderFetalDeathReport]|extension[fetalDeathReportNumber].value | identifier | Used for Jurisdiction Report, Coded Cause of Fetal Death, and Coded Race and Ethnicity Compositions also | 
| 5 | Auxiliary State file number | AUXNO| [CompositionProviderFetalDeathReport]|extension[fetalDeathLocalFileNumber].value | identifier | Used for Jurisdiction Report also | 
| 176 | Date of Registration--Year | DOR_YR| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 177 | <nobr>Date of Registration--Month<nobr> | DOR_MO| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 178 | Date of Registration--Day | DOR_DY| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 173 | Risk Factors--Hypertension Eclampsia (added after 2004) | EHYPE| [ConditionEclampsiaHypertensionVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 180 | Initiating cause/condition - Rupture of membranes prior to onset of labor | COD18a1| [ConditionFetalDeathCauseOrCondition]|code=44223004 (Premature rupture of membranes (disorder)) | na |  | 
| 181 | Initiating cause/condition - Abruptio placenta | COD18a2| [ConditionFetalDeathCauseOrCondition]|code=415105001 (Placental abruption (disorder)) | na |  | 
| 182 | Initiating cause/condition - Placental insufficiency | COD18a3| [ConditionFetalDeathCauseOrCondition]|code=237292005 (Placental insufficiency (disorder)) | na |  | 
| 183 | Initiating cause/condition - Prolapsed cord | COD18a4| [ConditionFetalDeathCauseOrCondition]|code=270500004 (Prolapsed cord (disorder)) | na |  | 
| 184 | <nobr>Initiating cause/condition - Chorioamnionitis<nobr> | COD18a5| [ConditionFetalDeathCauseOrCondition]|code=11612004 (Chorioamnionitis (disorder)) | na |  | 
| 185 | Initiating cause/condition - Other complications of placenta, cord, or membranes | COD18a6| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#membranes | na |  | 
| 186 | Initiating cause/condition - Unknown | COD18a7| [ConditionFetalDeathCauseOrCondition]|code=UNK | na |  | 
| 187 | Initiating cause/condition - Maternal conditions/diseases literal | COD18a8| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#maternalconditions, code.text | string | code.text should contain description | 
| 188 | Initiating cause/condition - Other complications of placenta, cord, or membranes literal | COD18a9| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#membranes, code.text | string | code.text should contain description | 
| 189 | Initiating cause/condition - Other obstetrical or pregnancy complications literal | COD18a10| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#obstetricalcomplications, code.text | string | code.text should contain description | 
| 190 | Initiating cause/condition - Fetal anomaly literal | COD18a11| [ConditionFetalDeathCauseOrCondition]|code=702709008 (Fetal Anomaly (Specify)), <br />code.text | string | code.text should contain description | 
| 191 | Initiating cause/condition - Fetal injury literal | COD18a12| [ConditionFetalDeathCauseOrCondition]|code=277489001 (Fetal trauma (disorder)), <br />code.text | string | specific description of fetal trauma should be provided in the code.text field | 
| 192 | Initiating cause/condition - Fetal infection literal | COD18a13| [ConditionFetalDeathCauseOrCondition]|code=128270001 (Infectious disorder of the fetus (disorder)), <br />code.text | string | specific description of fetal infection should be provided in the code.text field | 
| 193 | Initiating cause/condition - Other fetal conditions/disorders literal | COD18a14| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#fetalconditions, <br />code.text | string | code.text should contain description | 
| 194 | Other significant causes or conditions - Rupture of membranes prior to onset of labor | COD18b1| [ConditionFetalDeathOtherCauseOrCondition]|code=44223004 (Premature rupture of membranes (disorder)) | na |  | 
| 195 | Other significant causes or conditions - Abruptio placenta | COD18b2| [ConditionFetalDeathOtherCauseOrCondition]|code=415105001 (Placental abruption (disorder)) | na |  | 
| 196 | Other significant causes or conditions  - Placental insufficiency | COD18b3| [ConditionFetalDeathOtherCauseOrCondition]|code=237292005 (Placental insufficiency (disorder)) | na |  | 
| 197 | Other significant causes or conditions - Prolapsed cord | COD18b4| [ConditionFetalDeathOtherCauseOrCondition]|code=270500004 (Prolapsed cord (disorder)) | na |  | 
| 198 | Other significant causes or conditions - Chorioamnionitis | COD18b5| [ConditionFetalDeathOtherCauseOrCondition]|code=11612004 (Chorioamnionitis (disorder)) | na |  | 
| 199 | Other significant causes or conditions - Other complications of placenta, cord, or membranes | COD18b6| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#membranes | na |  | 
| 200 | Other significant causes or conditions - Unknown | COD18b7| [ConditionFetalDeathOtherCauseOrCondition]|code=UNK | na |  | 
| 201 | Other significant causes or conditions - Maternal conditions/diseases literal | COD18b8| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#maternalconditions, <br />code.text | string | code.text should contain description | 
| 202 | Other significant causes or conditions - Other complications of placenta, cord, or membranes literal | COD18b9| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#membranes, <br />code.text | string | code.text should contain description | 
| 203 | Other significant causes or conditions - Other obstetrical or pregnancy complications literal | COD18b10| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#obstetricalcomplications, <br />code.text | string | code.text should contain description | 
| 204 | Other significant causes or conditions - Fetal anomaly literal | COD18b11| [ConditionFetalDeathOtherCauseOrCondition]|code=702709008 (Fetal Anomaly (Specify)), <br />code.text | string | code.text should contain description | 
| 205 | Other significant causes or conditions - Fetal injury literal | COD18b12| [ConditionFetalDeathOtherCauseOrCondition]|code=277489001 (Fetal trauma (disorder)), <br />code.text | string | specific description of fetal trauma should be provided in the code.text field | 
| 206 | Other significant causes or conditions - Fetal infection literal | COD18b13| [ConditionFetalDeathOtherCauseOrCondition]|code=128270001 (Infectious disorder of the fetus (disorder)), <br />code.text | string | specific description of fetal infection should be provided in the code.text field | 
| 207 | Other significant causes or conditions - Other fetal conditions/disorders literal | COD18b14| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#fetalconditions, <br />code.text | string | code.text should contain description | 
| 111 | Risk Factors--Gestational Diabetes | GDIAB| [ConditionGestationalDiabetesVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 113 | Risk Factors--Hypertension Gestational  (SEE ADDITIONAL HYPERTENSION CATEGORY IN LOCATION 573 TO REFLECT RECOMMENDED CHANGES EFFECTIVE 2004) | GHYPE| [ConditionGestationalHypertensionVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 110 | Risk Factors--Prepregnancy Diabetes  (NOTE: SEE INSERTED NOTES FOR RISK FACTOR LOCATIONS 490-501 AND 573-575 TO REFLECT 2004 CHANGES) | PDIAB| [ConditionPrepregnancyDiabetesVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 112 | Risk Factors--Hypertension Prepregnancy | PHYPE| [ConditionPrepregnancyHypertensionVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 139 | Maternal Morbidity--Ruptured Uterus | RUT| [ConditionRupturedUterus]| | na | See [Note on missing maternal morbidity data] | 
| 10 | County of Delivery | CNTYO| [Encounter_Maternity]|location.location.address.district.extension[countyCode] | integer | See [CountyCodes] | 
| 11 | Place Where Delivery Occurred | DPLACE| [Encounter_Maternity]|location.physicalType | codeable | [ValueSetBirthDeliveryOccurred] | 
| 12 | Facility ID (NPI) - If available | FNPI| [Encounter_Maternity]|location.location.id | string |  | 
| 13 | Facility ID (State-Assigned) | SFN| [Encounter_Maternity]|location.location.identifier | Identifier |  | 
| 224 | Name of Delivery Facility | HOSP_D| [Encounter_Maternity]|location.location.name | string |  | 
| 225 | Place of Delivery Street number | STNUM_D| [Encounter_Maternity]|location.location.address.extension[stnum] | string |  | 
| 226 | Place of Delivery Pre Directional | PREDIR_D| [Encounter_Maternity]|location.location.address.extension[predir] | string |  | 
| 227 | Place of Delivery Street name | STNAME_D| [Encounter_Maternity]|location.location.address.extension[stname] | string |  | 
| 228 | Place of Delivery Street designator | STDESIG_D| [Encounter_Maternity]|location.location.address.extension[stdesig] | string |  | 
| 229 | Place of Delivery Post Directional | POSTDIR_D| [Encounter_Maternity]|location.location.address.extension[postdir] | string |  | 
| 230 | Place of Delivery Unit or Apartment Number | APTNUMB_D| [Encounter_Maternity]|location.location.address.extension[unitnum] | string |  | 
| 231 | Place of Delivery Street Address | ADDRESS_D| [Encounter_Maternity]|location.location.address.line | string |  | 
| 232 | Place of Delivery Zip code and Zip+4 | ZIPCODE_D| [Encounter_Maternity]|location.location.address.postalCode | string |  | 
| 233 | Place of Delivery County (literal) | CNTY_D| [Encounter_Maternity]|location.location.address.district | string |  | 
| 234 | Place of Delivery City/Town/Place (literal)  | CITY_D| [Encounter_Maternity]|location.location.address.city | string |  | 
| 235 | State, U.S. Territory or Canadian Province of Place of Delivery - literal | STATE_D| [Encounter_Maternity]|location.location.address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 236 | Place of Delivery Country (literal) | COUNTRY_D| [Encounter_Maternity]|location.location.address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 339 | Facility Mother Moved From (if transferred) | HOSPFROM| [Encounter_Maternity]|hospitalization.origin.name | string |  | 
| 347 | Date Signed by Certifier--Year | CERTIFIED_YR| [Encounter_Maternity]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 348 | Date Signed by Certifier--Month | CERTIFIED_MO| [Encounter_Maternity]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 349 | Date Signed by Certifier--Day | CERTIFIED_DY| [Encounter_Maternity]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 34 | Mother of Hispanic Origin?--Mexican | METHNIC1| [InputRaceAndEthnicity]|component[ HispanicMexican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 35 | Mother of Hispanic Origin?--Puerto Rican | METHNIC2| [InputRaceAndEthnicity]|component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 36 | Mother of Hispanic Origin?--Cuban | METHNIC3| [InputRaceAndEthnicity]|component[ HispanicCuban ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 37 | Mother of Hispanic Origin?--Other | METHNIC4| [InputRaceAndEthnicity]|component[ HispanicOther ].valueCoding, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 38 | Mother of Hispanic Origin?--Other Literal | METHNIC5| [InputRaceAndEthnicity]|component[ HispanicLiteral ].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 39 | Mother's Race--White | MRACE1| [InputRaceAndEthnicity]|component[ White].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 40 | Mother's Race--Black or African American | MRACE2| [InputRaceAndEthnicity]|component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 41 | Mother's Race--American Indian or Alaska Native | MRACE3| [InputRaceAndEthnicity]|component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 42 | Mother's Race--Asian Indian | MRACE4| [InputRaceAndEthnicity]|component[ AsianIndian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 43 | Mother's Race--Chinese | MRACE5| [InputRaceAndEthnicity]|component[ Chinese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 44 | Mother's Race--Filipino | MRACE6| [InputRaceAndEthnicity]|component[ Filipino].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 45 | Mother's Race--Japanese | MRACE7| [InputRaceAndEthnicity]|component[ Japanese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 46 | Mother's Race--Korean | MRACE8| [InputRaceAndEthnicity]|component[ Korean].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 47 | Mother's Race--Vietnamese | MRACE9| [InputRaceAndEthnicity]|component[ Vietnamese].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 48 | Mother's Race--Other Asian | MRACE10| [InputRaceAndEthnicity]|component[ OtherAsian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 49 | Mother's Race--Native Hawaiian | MRACE11| [InputRaceAndEthnicity]|component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 50 | Mother's Race--Guamanian or Chamorro | MRACE12| [InputRaceAndEthnicity]|component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 51 | Mother's Race--Samoan | MRACE13| [InputRaceAndEthnicity]|component[ Samoan].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 52 | Mother's Race--Other Pacific Islander | MRACE14| [InputRaceAndEthnicity]|component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 53 | Mother's Race--Other | MRACE15| [InputRaceAndEthnicity]|component[ OtherRace].valueBoolean, <br />subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 54 | Mother's Race--First American Indian or Alaska Native Literal | MRACE16| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 55 | Mother's Race--Second American Indian or Alaska Native Literal | MRACE17| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 56 | Mother's Race--First Other Asian Literal | MRACE18| [InputRaceAndEthnicity]|component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 57 | Mother's Race--Second Other Asian Literal | MRACE19| [InputRaceAndEthnicity]|component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 58 | Mother's Race--First Other Pacific Islander Literal | MRACE20| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 59 | Mother's Race--Second Other Pacific Islander Literal | MRACE21| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 60 | Mother's Race--First Other Literal | MRACE22| [InputRaceAndEthnicity]|component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 61 | Mother's Race--Second Other Literal | MRACE23| [InputRaceAndEthnicity]|component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 285 | Father of Hispanic Origin?--Mexican | FETHNIC1| [InputRaceAndEthnicity]|component[ HispanicMexican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 286 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2| [InputRaceAndEthnicity]|component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 287 | Father of Hispanic Origin?--Cuban | FETHNIC3| [InputRaceAndEthnicity]|component[ HispanicCuban ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 288 | Father of Hispanic Origin?--Other | FETHNIC4| [InputRaceAndEthnicity]|component[ HispanicOther ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 289 | Father of Hispanic Origin?--Other Literal | FETHNIC5| [InputRaceAndEthnicity]|component[ HispanicLiteral ].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 290 | Father's Race--White | FRACE1| [InputRaceAndEthnicity]|component[ White].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 291 | Father's Race--Black or African American | FRACE2| [InputRaceAndEthnicity]|component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 292 | Father's Race--American Indian or Alaska Native | FRACE3| [InputRaceAndEthnicity]|component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 293 | Father's Race--Asian Indian | FRACE4| [InputRaceAndEthnicity]|component[ AsianIndian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 294 | Father's Race--Chinese | FRACE5| [InputRaceAndEthnicity]|component[ Chinese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 295 | Father's Race--Filipino | FRACE6| [InputRaceAndEthnicity]|component[ Filipino].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 296 | Father's Race--Japanese | FRACE7| [InputRaceAndEthnicity]|component[ Japanese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 297 | Father's Race--Korean | FRACE8| [InputRaceAndEthnicity]|component[ Korean].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 298 | Father's Race--Vietnamese | FRACE9| [InputRaceAndEthnicity]|component[ Vietnamese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 299 | Father's Race--Other Asian | FRACE10| [InputRaceAndEthnicity]|component[ OtherAsian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 300 | Father's Race--Native Hawaiian | FRACE11| [InputRaceAndEthnicity]|component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 301 | Father's Race--Guamanian or Chamorro | FRACE12| [InputRaceAndEthnicity]|component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 302 | Father's Race--Samoan | FRACE13| [InputRaceAndEthnicity]|component[ Samoan].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 303 | Father's Race--Other Pacific Islander | FRACE14| [InputRaceAndEthnicity]|component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 304 | Father's Race--Other | FRACE15| [InputRaceAndEthnicity]|component[ OtherRace].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 305 | Father's Race--First American Indian or Alaska Native Literal | FRACE16| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 306 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 307 | Father's Race--First Other Asian Literal | FRACE18| [InputRaceAndEthnicity]|component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 308 | Father's Race--Second Other Asian Literal | FRACE19| [InputRaceAndEthnicity]|component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 309 | Father's Race--First Other Pacific Islander Literal | FRACE20| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 310 | Father's Race--Second Other Pacific Islander Literal | FRACE21| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 311 | Father's Race--First Other Literal | FRACE22| [InputRaceAndEthnicity]|component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 312 | Father's Race--Second Other Literal | FRACE23| [InputRaceAndEthnicity]|component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 150 | Were Autopsy or Histological Placental Examination Results Used in Determining the Cause of Fetal Death? | AUTOPF| [ObservationAutopsyHistologicalExamResultsUsed]|value | codeable | [ValueSetYesNoNotApplicable], <br />sandbox uses boolean, BFDR IG uses codeable | 
| 148 | Was an Autopsy Performed? | AUTOP| [ObservationAutopsyPerformedIndicatorVitalRecords]|value | codeable | [ValueSetYesNoUnknownNotApplicableVitalRecords] | 
| 143 | Weight of Fetus | FWG| [ObservationBirthWeightVitalRecords]|value | quantity |  | 
| 103 | Number of Cigarettes Smoked in 3 months prior to Pregnancy | CIGPN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=64794-1 (In the 3 months before you got pregnant, <br />how many cigarettes did you smoke on an average day) | integer |  | 
| 104 | Number of Cigarettes Smoked in 1st 3 months | CIGFN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=87298-6 (Cigarettes smoked per day by Mother--1st trimester) | integer |  | 
| 105 | Number of Cigarettes Smoked in 2nd 3 months | CIGSN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=87299-4 (Cigarettes smoked per day by Mother--2nd trimester) | integer |  | 
| 106 | Number of Cigarettes Smoked in third trimester (RECOMMENDED CHANGE EFFECTIVE 2004) | CIGLN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=64795-8 (In the last 3 months of your pregnancy, how many cigarettes did you smoke on an average day) | integer |  | 
| 80 | Date of First Prenatal Care Visit--Month | DOFP_MO| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 81 | Date of First Prenatal Care Visit--Day | DOFP_DY| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 82 | Date of First Prenatal Care Visit--Year | DOFP_YR| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 99 | Date of Last Live Birth--Month | MLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 100 | Date of Last Live Birth--Year | YLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 144 | Weight of Fetus--Edit Flag | FW_BYPASS| [ObservationEditFlagBirthweight]|value | codeable | [PHVS_BirthWeightEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 146 | Obstetric Estimation of Gestation--Edit Flag | OWGEST_BYPASS| [ObservationEditFlagEstimateOfGestation]|value | codeable | [PHVS_EstimateOf GestationEditFlags_NCHS], <br />See [Handling of edit flags]  | 
| 28 | Date of Birth (Father)--Edit Flag | FAGE_BYPASS| [ObservationEditFlagFathersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 284 | Father's Education--Edit Flag | FEDUC_BYPASS| [ObservationEditFlagFathersEducation]|value | codeable | [PHVS_EducationLevelEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 17 | Date of Birth (Mother)--Edit Flag | MAGE_BYPASS| [ObservationEditFlagMothersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 33 | Mother's Education--Edit Flag | MEDUC_BYPASS| [ObservationEditFlagMothersEducation]|value | codeable | [PHVS_EditFlags_NCHS], <br />why does this not use same edit flag as father's education [PHVS_EducationLevelEditFlags_NCHS]?  <br />See [Handling of edit flags] | 
| 90 | Mother's Height--Edit Flag | HGT_BYPASS| [ObservationEditFlagMothersHeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], <br />See [Handling of edit flags]  | 
| 92 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS| [ObservationEditFlagMothersPrepregnancyWeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 120 | Risk Factors--Number Previous Cesareans--Edit Flag | NPCES_BYPASS| [ObservationEditFlagNumberPreviousCesareans]|value | codeable | [PHVS_NumberOfPreviousCesareansEditFlags_NCHS], <br />See [Handling of edit flags]  | 
| 155 | Plurality--Edit Flag | PLUR_BYPASS| [ObservationEditFlagPlurality]|value | codeable | [PHVS_PluralityEditFlags_NCHS], <br />See [Handling of edit flags] | 
| 147 | Estimated time of fetal death | ETIME| [ObservationFetalDeathTimePoint]|value | codeable | [ValueSetFetalDeathTimePoints] | 
| 133 | Method of Delivery--Fetal Presentation | PRES| [ObservationFetalPresentation]|value | codeable | [ValueSetFetalPresentations] | 
| 145 | Obstetric Estimation of Gestation | OWGEST| [ObservationGestationalAgeAtDeliveryVitalRecords]|value | quantity |  | 
| 149 | Was a Histological Placental Examination Performed? | HISTOP| [ObservationHistologicalPlacentalExamPerformed]|value | codeable | [ValueSetHistologicalPlacentalExamination] | 
| 141 | Maternal Morbidity--Admit to Intensive Care | AINT| [ObservationICUAdmission]| | na | See [Note on missing maternal morbidity data] | 
| 135 | Method of Delivery--Trial of Labor Attempted | TLAB| [ObservationLaborTrialAttempted]|value | boolean | Discussion needed: IJE values are Y, N, U, and X (not applicable). However, encoding with Boolean does not capture Unknown or Not Applicable | 
| 107 | Date Last Normal Menses Began--Year | DLMP_YR| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 108 | Date Last Normal Menses Began--Month | DLMP_MO| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 109 | Date Last Normal Menses Began--Day | DLMP_DY| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 88 | Mother's Height--Feet | HFT| [ObservationMotherHeightVitalRecords]|value | quantity |  | 
| 89 | Mother's Height--Inches | HIN| [ObservationMotherHeightVitalRecords]|value | quantity |  | 
| 91 | Mother's Prepregnancy Weight | PWGT| [ObservationMotherPrepregnancyWeightVitalRecords]|value | quantity |  | 
| 95 | Did Mother get WIC Food for Herself? | WIC| [ObservationMotherReceivedWICFood]|value | codeable | [ValueSetYesNoUnknownVitalRecords] | 
| 97 | Previous Live Births Now Dead | PLBD| [ObservationNumberBirthsNowDeadVitalRecords]|value | integer |  | 
| 96 | Previous Live Births Now Living | PLBL| [ObservationNumberBirthsNowLivingVitalRecords]|value | integer |  | 
| 153 | Number of Fetal Deaths | FDTH| [ObservationNumberFetalDeathsThisDeliveryVitalRecords]|value | integer |  | 
| 119 | Risk Factors--Number Previous Cesareans | NPCES| [ObservationNumberPreviousCesareansVitalRecords]|value | integer | See [Note on missing pregnancy risk factors data] | 
| 32 | Mother's Education | MEDUC| [ObservationParentEducationLevelVitalRecords]|value, <br />focus[ PatientMotherVitalRecords ] | codeable | [EducationLevelVS] | 
| 283 | Father's Education | FEDUC| [ObservationParentEducationLevelVitalRecords]|value, <br />focus[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [EducationLevelVS] | 
| 118 | Risk Factors--Previous Cesarean | PCES| [ObservationPreviousCesareanVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 269 | Occupation of Mother | MOM_OC_T| [odh-UsualWork]|value.text | string(40) |  | 
| 271 | Occupation of Father | DAD_OC_T| [odh-UsualWork]|value.text | string(40) |  | 
| 273 | Industry of Mother | MOM_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | 
| 275 | Industry of Father | DAD_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | 
| 168 | NCHS USE ONLY: Receipt date -- Year | R_YR| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 169 | NCHS USE ONLY: Receipt date -- Month | R_MO| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 170 | NCHS USE ONLY: Receipt date -- Day | R_DY| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 151 | Plurality | PLUR| [PatientChildVitalRecords]|extension[patient-multipleBirthTotal].valuePositiveInt | integer |  | 
| 171 | Mother's Reported Age | MAGER| [PatientChildVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, <br />extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=<br />Reference[ PatientMotherVitalRecords ] | quantity |  | 
| 1 | Date of Delivery (Fetus)--Year | FDOD_YR| [PatientDecedentFetusVitalRecords]|birthDate |  |  | 
| 2 | State, U.S. Territory or Canadian Province of Place of Delivery - code | DSTATE| [PatientDecedentFetusVitalRecords]|extension[patient-birthPlace].value[x].state | codeable | [StatesTerritoriesAndProvincesVS]  | 
| 6 | Time of Delivery | TD| [PatientDecedentFetusVitalRecords]|birthDate.extension[patient-birthTime] |  | See [PartialDatesAndTimes] | 
| 7 | Sex | FSEX| [PatientDecedentFetusVitalRecords]|extension[us-core-birthsex].value | codeable | [USCoreBirthSexVS](http://hl7.org/fhir/us/core/ValueSet/birthsex) | 
| 8 | Date of Delivery (Fetus)--Month | FDOD_MO| [PatientDecedentFetusVitalRecords]|birthDate |  |  | 
| 9 | Date of Delivery (Fetus)--Day | FDOD_DY| [PatientDecedentFetusVitalRecords]|birthDate |  |  | 
| 152 | Set Order | SORD| [PatientDecedentFetusVitalRecords]|multipleBirth[x] | integer |  | 
| 172 | Father's Reported Age | FAGER| [PatientDecedentFetusVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, <br />extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=<br />Reference[ RelatedPersonFatherNaturalVitalRecords ] | quantity |  | 
| 219 | Fetus First Name | FETFNAME| [PatientDecedentFetusVitalRecords]|name.given, <br />name.use = official | string | See [Note on Decedent Name] | 
| 220 | Fetus Middle Name | FETMNAME| [PatientDecedentFetusVitalRecords]|name.given, <br />name.use = official | string | See [Note on Decedent Name] | 
| 221 | Fetus Last Name | FETLNAME| [PatientDecedentFetusVitalRecords]|name.family, name.use = official. (absence is equivalent to ‘UNKNOWN’.) | string  | See [Note on Decedent Name] | 
| 222 | Fetus Surname Suffix | SUFFIX| [PatientDecedentFetusVitalRecords]|name.suffix, <br />name.use = official | string |  | 
| 14 | Date of Birth (Mother)--Year | MDOB_YR| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 15 | Date of Birth (Mother)--Month | MDOB_MO| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 16 | Date of Birth (Mother)--Day | MDOB_DY| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 18 | State, U.S. Territory or Canadian Province of Birth (Mother) - code | BPLACEC_ST_TER| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesAndProvincesVS] | 
| 19 | Mother's Birthplace--Country | BPLACEC_CNT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country  | string | [ResidenceCountryVS] | 
| 20 | Residence of Mother--City/Town | CITYC| [PatientMotherVitalRecords]|address.city.extension[ cityCode ] | integer | See [CityCodes] | 
| 21 | Residence of Mother--County | COUNTYC| [PatientMotherVitalRecords]|address.district.extension[countyCode] | integer | See [CountyCodes] | 
| 22 | State, U.S. Territory or Canadian Province of Residence (Mother) - code | STATEC| [PatientMotherVitalRecords]|address.state | string | [StatesTerritoriesAndProvincesVS] | 
| 23 | Residence of Mother--Country | COUNTRYC| [PatientMotherVitalRecords]|address.country | string | [ResidenceCountryVS] | 
| 24 | Residence of Mother--Inside City/Town Limits | LIMITS| [PatientMotherVitalRecords]|address.extension[ withinCityLimitsIndicator ].value | codeable | [ValueSetYesNoUnknownVitalRecords] | 
| 239 | Mother's Legal First Name | MOMFNAME| [PatientMotherVitalRecords]|name.given, <br />name.use = official | string |  | 
| 240 | Mother's Legal Middle Name | MOMMNAME| [PatientMotherVitalRecords]|name.given, <br />name.use = official  | string |  | 
| 241 | Mother's Legal Last Name | MOMLNAME| [PatientMotherVitalRecords]|name.family, <br />name.use = official | string |  | 
| 242 | Mother's Legal Surname Suffix | MOMSUFFIX| [PatientMotherVitalRecords]|name.suffix, <br />name.use = official  | string |  | 
| 243 | Mother's First Maiden Name | MOMFMNME| [PatientMotherVitalRecords]|name.given, <br />name.use = maiden | string |  | 
| 244 | Mother's Middle Maiden Name | MOMMMID| [PatientMotherVitalRecords]|name.given, <br />name.use = maiden | string |  | 
| 245 | Mother's Last Maiden Name | MOMMAIDN| [PatientMotherVitalRecords]|name.family, <br />name.use = maiden | string |  | 
| 246 | Mother's Maiden Surname Suffix | MOMMSUFFIX| [PatientMotherVitalRecords]|name.suffix, <br />name.use = maiden | string |  | 
| 247 | Mother's Residence Street number | STNUM| [PatientMotherVitalRecords]|address.extension[stnum] | string |  | 
| 248 | Mother's Residence Pre Directional | PREDIR| [PatientMotherVitalRecords]|address.extension[predir] | string |  | 
| 249 | Mother's Residence Street name | STNAME| [PatientMotherVitalRecords]|address.extension[stname] | string |  | 
| 250 | Mother's Residence Street designator | STDESIG| [PatientMotherVitalRecords]|address.extension[stdesig] | string |  | 
| 251 | Mother's Residence Post Directional | POSTDIR| [PatientMotherVitalRecords]|address.extension[postdir] | string |  | 
| 252 | Mother's Residence Unit or Apartment Number | APTNUMB| [PatientMotherVitalRecords]|address.extension[unitnum] | string |  | 
| 253 | Mother's Residence Street Address | ADDRESS| [PatientMotherVitalRecords]|address.line | string |  | 
| 254 | Mother's Residence Zip code and Zip+4 | ZIPCODE| [PatientMotherVitalRecords]|address.postalCode | string |  | 
| 255 | Mother's Residence County (literal) | COUNTYTXT| [PatientMotherVitalRecords]|address.district | string |  | 
| 256 | Mother's Residence City/Town/Place (literal)  | CITYTXT| [PatientMotherVitalRecords]|address.city | string |  | 
| 257 | State, U.S. Territory or Canadian Province of Residence (Mother) - literal | STATETXT| [PatientMotherVitalRecords]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 258 | Mother's Residence Country (literal) | CNTRYTXT| [PatientMotherVitalRecords]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 265 | Mother's Social Security Number | MOM_SSN| [PatientMotherVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”SS”  | string |  | 
| 279 | State, U.S. Territory or Canadian Province of Birth (Mother) - literal | MBPLACE_ST_TER_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | See [StateLiterals] | 
| 280 | Mother's Country of Birth (Literal) | MBPLACE_CNTRY_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 78 | Attendant | ATTEND| [PractitionerVitalRecords]|qualification.code | codeable | [ValueSetBirthAttendantTitles] | 
| 340 | Attendant's Name | ATTEND_NAME| [PractitionerVitalRecords]|name.text | string |  | 
| 341 | Attendant's NPI | ATTEND_NPI| [PractitionerVitalRecords]|identifier:NPI | string |  | 
| 342 | Attendant ("Other" specified text) | ATTEND_OTH_TXT| [PractitionerVitalRecords]|qualification.code.text | string | code.text should contain description | 
| 174 | Risk Factors--Infertility: Fertility Enhancing Drugs (added after 2004) | INFT_DRG| [ProcedureArtificialInseminationVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 175 | Risk Factors--Infertility: Asst. Rep. Technology (added after 2004) | INFT_ART| [ProcedureAssistedFertilizationVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
| 134 | Method of Delivery--Route and Method of Delivery | ROUT| [ProcedureFinalRouteMethodDelivery]|code | codeable | [ValueSetDeliveryRoutes] | 
| 117 | Risk Factors--Infertility Treatment  (SEE ADDITIONAL SUBCATEGORIES IN LOCATIONS 574-575) | INFT| [ProcedureInfertilityTreatmentVitalRecords]| | na | See [Note on missing pregnancy risk factors data] | 
{: .grid }
#### Coded Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 62 | <nobr>Mother's Race Tabulation Variable 1E<nobr> | MRACE1E| [CodedRaceAndEthnicity]|component[FirstEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 63 | Mother's Race Tabulation Variable 2E | MRACE2E| [CodedRaceAndEthnicity]|component[SecondEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 64 | Mother's Race Tabulation Variable 3E | MRACE3E| [CodedRaceAndEthnicity]|component[ThirdEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 65 | Mother's Race Tabulation Variable 4E | MRACE4E| [CodedRaceAndEthnicity]|component[FourthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 66 | Mother's Race Tabulation Variable 5E | MRACE5E| [CodedRaceAndEthnicity]|component[FifthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 67 | Mother's Race Tabulation Variable 6E | MRACE6E| [CodedRaceAndEthnicity]|component[SixthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 68 | Mother's Race Tabulation Variable 7E | MRACE7E| [CodedRaceAndEthnicity]|component[SeventhEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 69 | Mother's Race Tabulation Variable 8E | MRACE8E| [CodedRaceAndEthnicity]|component[EighthEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 70 | Mother's Race Tabulation Variable 16C | MRACE16C| [CodedRaceAndEthnicity]|component[FirstAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 71 | Mother's Race Tabulation Variable 17C | MRACE17C| [CodedRaceAndEthnicity]|component[SecondAmericanIndianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 72 | Mother's Race Tabulation Variable 18C | MRACE18C| [CodedRaceAndEthnicity]|component[FirstOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 73 | Mother's Race Tabulation Variable 19C | MRACE19C| [CodedRaceAndEthnicity]|component[SecondOtherAsianCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 74 | Mother's Race Tabulation Variable 20C | MRACE20C| [CodedRaceAndEthnicity]|component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 75 | Mother's Race Tabulation Variable 21C | MRACE21C| [CodedRaceAndEthnicity]|component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 76 | Mother's Race Tabulation Variable 22C | MRACE22C| [CodedRaceAndEthnicity]|component[FirstOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 77 | Mother's Race Tabulation Variable 23C | MRACE23C| [CodedRaceAndEthnicity]|component[SecondOtherRaceCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 313 | Father's Race Tabulation Variable 1E | FRACE1E| [CodedRaceAndEthnicity]|component[FirstEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 314 | Father's Race Tabulation Variable 2E | FRACE2E| [CodedRaceAndEthnicity]|component[SecondEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 315 | Father's Race Tabulation Variable 3E | FRACE3E| [CodedRaceAndEthnicity]|component[ThirdEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 316 | Father's Race Tabulation Variable 4E | FRACE4E| [CodedRaceAndEthnicity]|component[FourthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 317 | Father's Race Tabulation Variable 5E | FRACE5E| [CodedRaceAndEthnicity]|component[FifthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 318 | Father's Race Tabulation Variable 6E | FRACE6E| [CodedRaceAndEthnicity]|component[SixthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 319 | Father's Race Tabulation Variable 7E | FRACE7E| [CodedRaceAndEthnicity]|component[SeventhEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 320 | Father's Race Tabulation Variable 8E | FRACE8E| [CodedRaceAndEthnicity]|component[EighthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 321 | Father's Race Tabulation Variable 16C | FRACE16C| [CodedRaceAndEthnicity]|component[FirstAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 322 | Father's Race Tabulation Variable 17C | FRACE17C| [CodedRaceAndEthnicity]|component[SecondAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 323 | Father's Race Tabulation Variable 18C | FRACE18C| [CodedRaceAndEthnicity]|component[FirstOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 324 | Father's Race Tabulation Variable 19C | FRACE19C| [CodedRaceAndEthnicity]|component[SecondOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 325 | Father's Race Tabulation Variable 20C | FRACE20C| [CodedRaceAndEthnicity]|component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 326 | Father's Race Tabulation Variable 21C | FRACE21C| [CodedRaceAndEthnicity]|component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 327 | Father's Race Tabulation Variable 22C | FRACE22C| [CodedRaceAndEthnicity]|component[FirstOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 328 | Father's Race Tabulation Variable 23C | FRACE23C| [CodedRaceAndEthnicity]|component[SecondOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 329 | Mother's Hispanic Code for Literal | METHNIC5C| [CodedRaceAndEthnicity]|component[HispanicCodeForLiteral].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | 
| 330 | Mother's Edited Hispanic Origin Code | METHNICE| [CodedRaceAndEthnicity]|component[HispanicCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | 
| 332 | Father's Hispanic Code for Literal | FETHNIC5C| [CodedRaceAndEthnicity]|component[HispanicCodeForLiteral].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | 
| 333 | Father's Edited Hispanic Origin Code | FETHNICE| [CodedRaceAndEthnicity]|component[HispanicCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | 
| 208 | Coded initiating cause/condition | ICOD| [ConditionCodedInitiatingFetalDeathCauseOrCondition]|code | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 209 | Coded other significant causes or conditions- first mentioned | OCOD1| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 210 | Coded other significant causes or conditions- second mentioned | OCOD2| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 211 | Coded other significant causes or conditions- third mentioned | OCOD3| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 212 | Coded other significant causes or conditions- fourth mentioned | OCOD4| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 213 | Coded other significant causes or conditions- fifth mentioned | OCOD5| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 214 | Coded other significant causes or conditions- sixth mentioned | OCOD6| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 215 | Coded other significant causes or conditions- seventh mentioned | OCOD7| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
{: .grid }
#### Not Implemented Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 354 | Blank for One-Byte Field 1 | PLACE1_1| [EmergingIssues]|component[EmergingIssue1_1].value | string(1) | formerly not implemented, used VRDR as example | 
| 355 | Blank for One-Byte Field 2 | PLACE1_2| [EmergingIssues]|component[EmergingIssue1_2].value | string(1) | formerly not implemented, used VRDR as example | 
| 356 | Blank for One-Byte Field 3 | PLACE1_3| [EmergingIssues]|component[EmergingIssue1_3].value | string(1) | formerly not implemented, used VRDR as example | 
| 357 | Blank for One-Byte Field 4 | PLACE1_4| [EmergingIssues]|component[EmergingIssue1_4].value | string(1) | formerly not implemented, used VRDR as example | 
| 358 | Blank for One-Byte Field 5 | PLACE1_5| [EmergingIssues]|component[EmergingIssue1_5].value | string(1) | formerly not implemented, used VRDR as example | 
| 359 | Blank for One-Byte Field 6 | PLACE1_6| [EmergingIssues]|component[EmergingIssue1_6].value | string(1) | formerly not implemented, used VRDR as example | 
| 360 | Blank for Eight-Byte Field 1 | PLACE8_1| [EmergingIssues]|component[EmergingIssue8_1].value | string(8) | formerly not implemented, used VRDR as example | 
| 361 | Blank for Eight-Byte Field 2 | PLACE8_2| [EmergingIssues]|component[EmergingIssue8_2].value | string(8) | formerly not implemented, used VRDR as example | 
| 362 | Blank for Eight-Byte Field 3 | PLACE8_3| [EmergingIssues]|component[EmergingIssue8_3].value | string(8) | formerly not implemented, used VRDR as example | 
| 363 | Blank for Twenty-Byte Field | PLACE20| [EmergingIssues]|component[EmergingIssue20].value | string(20) | formerly not implemented, used VRDR as example | 
| 4 | Void flag | VOID| [not implemented]| |  |  | 
| 29 | Mother Married?--Ever(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MARE| [not implemented]| |  |  | 
| 30 | Mother Married?-- At Conception, at Delivery or any Time in Between(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MARN| [not implemented]| |  |  | 
| 31 | FILLER | *NO IJE MAPPING*| [not implemented]| |  |  | 
| 79 | Mother Transferred?(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | TRAN| [not implemented]|Encounter-maternity.hospitalization.admitSource (Y if present, N if not present) |  |  | 
| 83 | Date of Last Prenatal Care Visit--Month(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_MO| [not implemented]| |  |  | 
| 84 | Date of Last Prenatal Care Visit--Day(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_DY| [not implemented]| |  |  | 
| 85 | Date of Last Prenatal Care Visit--Year(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_YR| [not implemented]| |  |  | 
| 86 | Total Number of Prenatal Care Visits(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | NPREV| [not implemented]| |  |  | 
| 87 | Total Number of Prenatal Care Visits--Edit Flag(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | NPREV_BYPASS| [not implemented]| |  |  | 
| 93 | Mother's Weight at Delivery(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DWGT| [not implemented]| |  |  | 
| 94 | Mother's Weight at Delivery--Edit Flag(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DWGT_BYPASS| [not implemented]| |  |  | 
| 98 | Previous Other Pregnancy Outcomes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | POPO| [not implemented]| |  |  | 
| 101 | Date of Last Other Pregnancy Outcome--Month(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MOPO| [not implemented]| |  |  | 
| 102 | Date of Last Other Pregnancy Outcome--Year(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | YOPO| [not implemented]| |  |  | 
| 114 | Risk Factors--Previous Preterm Births(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PPB| [not implemented]| |  |  | 
| 115 | Risk Factors--Poor Pregnancy Outcomes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PPO| [not implemented]| |  |  | 
| 116 | Risk Factors--Vaginal Bleeding  (RECOMMENDED DELETION EFFECTIVE 2004)  (NCHS DELETED THIS ITEM EFFECTIVE 2011) | VB| [not implemented]| |  |  | 
| 121 | Infections Present--Gonorrhea(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | GON| [not implemented]| |  |  | 
| 122 | Infections Present--Syphilis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | SYPH| [not implemented]| |  |  | 
| 123 | Infections Present--Herpes Simplex (HSV)  (RECOMMENDED DELETION EFFECTIVE 2004) (NCHS DELETED THIS ITEM EFFECTIVE 2011) | HSV| [not implemented]| |  |  | 
| 124 | Infections Present--Chlamydia(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CHAM| [not implemented]| |  |  | 
| 125 | Infections Present--Listeria(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | LM| [not implemented]| |  |  | 
| 126 | Infections Present--Group B streptococcus(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | GBS| [not implemented]| |  |  | 
| 127 | Infections Present--Cytomeglovirus(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CMV| [not implemented]| |  |  | 
| 128 | Infections Present--Parvo virus(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | B19| [not implemented]| |  |  | 
| 129 | Infections Present--Toxoplasmosis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | TOXO| [not implemented]| |  |  | 
| 130 | Infections Present--Other(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | OTHERI| [not implemented]| |  |  | 
| 131 | Method of Delivery--Attempted Forceps (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTF| [not implemented]| |  |  | 
| 132 | Method of Delivery--Attempted Vacuum (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTV| [not implemented]| |  |  | 
| 136 | Method of Delivery--Hysterotomy/Hysterectomy(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | HYST| [not implemented]| |  |  | 
| 137 | Maternal Morbidity--Maternal Transfusion(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MTR| [not implemented]| |  |  | 
| 138 | Maternal Morbidity--Perineal Laceration(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PLAC| [not implemented]| |  |  | 
| 140 | Maternal Morbidity--Unplanned Hysterectomy(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | UHYS| [not implemented]| |  |  | 
| 142 | Maternal Morbidity--Unplanned Operation(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | UOPR| [not implemented]| |  |  | 
| 154 | Matching Number | MATCH| [not implemented]| |  |  | 
| 156 | Congenital Anomalies of the Fetus--Anencephaly(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | ANEN| [not implemented]| |  |  | 
| 157 | Congenital Anomalies of the Fetus--Meningomyelocele/Spina Bifida(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MNSB| [not implemented]| |  |  | 
| 158 | Congenital Anomalies of the Fetus--Cyanotic congenital heart disease(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CCHD| [not implemented]| |  |  | 
| 159 | Congenital Anomalies of the Fetus--Congenital diaphragmatic hernia(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CDH| [not implemented]| |  |  | 
| 160 | Congenital Anomalies of the Fetus--Omphalocele(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | OMPH| [not implemented]| |  |  | 
| 161 | Congenital Anomalies of the Fetus--Gastroschisis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | GAST| [not implemented]| |  |  | 
| 162 | Congenital Anomalies of the Fetus--Limb Reduction Defect(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | LIMB| [not implemented]| |  |  | 
| 163 | Congenital Anomalies of the Fetus--Cleft Lip with or without Cleft Palate(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CL| [not implemented]| |  |  | 
| 164 | Congenital Anomalies of the Fetus--Cleft Palate Alone(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CP| [not implemented]| |  |  | 
| 165 | Congenital Anomalies of the Fetus--Down Syndrome(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOWT| [not implemented]| |  |  | 
| 166 | Congenital Anomalies of the Fetus--Suspected Chromosomal disorder(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CDIT| [not implemented]| |  |  | 
| 167 | Congenital Anomalies of the Fetus--Hypospadias(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | HYPO| [not implemented]| |  |  | 
| 179 | FILLER | *NO IJE MAPPING*| [not implemented]| |  |  | 
| 216 | Infections Present--Genital Herpes (Subcategory in position 504) | HSV1| [not implemented]| |  |  | 
| 217 | Infections Present--HIV | HIV| [not implemented]| |  |  | 
| 218 | Alcohol Used? | ALCOHOL| [not implemented]| |  |  | 
| 223 | Fetus Legal Name--Alias | ALIAS| [not implemented]| |  |  | 
| 237 | Place of Delivery Longitude | LONG_D| [not implemented]| |  |  | 
| 238 | Place of Delivery Latitude | LAT_D| [not implemented]| |  |  | 
| 259 | Mother's Residence Longitude | LONG| [not implemented]| |  |  | 
| 260 | Mother's Residence Latitude | LAT| [not implemented]| |  |  | 
| 267 | Mother's Age (Calculated) | MAGE_CALC| [not implemented]| |  |  | 
| 268 | Father's Age (Calculated) | FAGE_CALC| [not implemented]| |  |  | 
| 270 | Occupation of Mother (coded) | MOM_OC_C| [not implemented]| |  |  | 
| 272 | Occupation of Father (coded) | DAD_OC_C| [not implemented]| |  |  | 
| 274 | Industry of Mother (coded) | MOM_IN_C| [not implemented]| |  |  | 
| 276 | Industry of Father (coded) | DAD_IN_C| [not implemented]| |  |  | 
| 343 | Informant's First Name | INFORMFST| [not implemented]| |  |  | 
| 344 | Informant's Middle Name | INFORMMID| [not implemented]| |  |  | 
| 345 | Informant's Last Name | INFORMLST| [not implemented]| |  |  | 
| 346 | Informant's Relationship to Fetus | INFORMRELATE| [not implemented]| |  |  | 
| 350 | Date Filed by Registrar--Year | REGISTER_YR| [not implemented]| |  |  | 
| 351 | Date Filed by Registrar--Month | REGISTER_MO| [not implemented]| |  |  | 
| 352 | Date Filed by Registrar--Day | REGISTER_DY| [not implemented]| |  |  | 
| 353 | Replacement (amended) Record | REPLACE (*deprecated*)| [not implemented]|Deprecated see [VRFM](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/message.html#successful-death-record-submission ) |  |  | 
| 364 | Blank for future expansion | BLANK| [not implemented]| |  |  | 
| 365 | Blank for Jurisdictional Use Only | BLANK2| [not implemented]| |  |  | 
{: .grid }
{% include markdown-link-references.md %}
