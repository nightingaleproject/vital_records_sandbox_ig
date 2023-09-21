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
| 242 | FILLER 1 | *NO IJE MAPPING*| [not implemented]| |  |  | 
| 31 | Mother Married?--Acknowledgement of Paternity Signed | ACKN| [ObservationPaternityAcknowledgementSigned]|value | codeable | [PHVS_YesNoNotApplicable_NCHS] | 
| 268 | Mother's Residence Street Address | ADDRESS| [PatientMotherVitalRecords]|address.line | string |  | 
| 199 | Maternal Morbidity--Admit to Intensive Care | AINT| [ObservationICUAdmission]| | na | See [Note on missing data] | 
| 219 | Congenital Anomalies of the Newborn--Anencephaly | ANEN| [ConditionCongenitalAnomalyOfNewborn]|code=89369001 | na | See [Note on missing data] | 
| 185 | Characteristics of Labor & Delivery--Antibiotics | ANTB| [ObservationAntibioticsAdministeredDuringLabor]| | na | See [Note on missing data] | 
| 216 | Abnormal Conditions of the Newborn--Antibiotics | ANTI| [ProcedureAntibioticSuspectedNeonatalSepsis]| | na | See [Note on missing data] | 
| 206 | Apgar Score at 10 Minutes | APGAR10| [ObservationApgarScoreVitalRecords]|value, code = 9271-8 | integer | [ValueSetApgarTimingVitalRecords] | 
| 205 | Apgar Score at 5 Minutes | APGAR5| [ObservationApgarScoreVitalRecords]|value, code = 9274-2 | integer | [ValueSetApgarTimingVitalRecords] | 
| 124 | Attendant Title | ATTEND| [PractitionerVitalRecords]|qualification.code | codeable | [PHVS_BirthAttendantTitles_NCHS] | 
| 326 | Attendant's Name | ATTEND_NAME| [PractitionerVitalRecords]|name.text | string |  | 
| 327 | Attendant's NPI | ATTEND_NPI| [PractitionerVitalRecords]|identifier:NPI | string |  | 
| 304 | Attendant ("Other" specified text) | ATTEND_OTH_TXT| [PractitionerVitalRecords]|qualification.code.text | string |  | 
| 190 | Method of Delivery--Attempted Forceps (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTF| [not implemented]| |  |  | 
| 191 | Method of Delivery--Attempted Vacuum (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTV| [not implemented]| |  |  | 
| 182 | Characteristics of Labor & Delivery--Augmentation of Labor | AUGL| [ProcedureAugmentationOfLabor]| | na | See [Note on missing data] | 
| 5 | Auxiliary State file number | AUXNO| [CompositionProviderLiveBirthReport]|extension[liveBirthLocalFileNumber].value | identifier | Used for Jurisdiction Report also | 
| 212 | Abnormal Conditions of the Newborn--Assisted Ventilation | AVEN1| [ProcedureAssistedVentilationFollowingDelivery]| | na | See [Note on missing data] | 
| 213 | Abnormal Conditions of the Newborn--Assisted Ventilation > 6 hours | AVEN6| [ProcedureAssistedVentilationMoreThanSixHours]| | na | See [Note on missing data] | 
| 233 | Is Infant Being Breastfed at discharge? (RECOMMENDED CHANGE EFFECTIVE 2004) | BFED| [ObservationInfantBreastfedAtDischarge]|value | boolean | Discussion needed: IJE values are Y, N, U. However, encoding with Boolean does not capture Unknown | 
| 218 | Abnormal Conditions of the Newborn--Birth Injury(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | BINJ| [not implemented]| |  |  | 
| 251 | County of Birth (Literal) | BIRTH_CO| [PatientChildVitalRecords]|extension[patient-birthPlace].value[x].district | string |  | 
| 352 | Blank for Future Expansion | BLANK| [not implemented]| |  |  | 
| 353 | Blank for Jurisdictional Use Only | BLANK2| [not implemented]| |  | See [Note on Decedent Name] | 
| 11 | Place Where Birth Occurred (type of place or institution) | BPLACE| [EncounterBirth]|location.physicalType | codeable | [ValueSetBirthDeliveryOccurred] | 
| 19 | Birthplace of Mother--Country | BPLACEC_CNT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country  | string | [ResidenceCountryVS] | 
| 18 | State, U.S. Territory or Canadian Province of Birth (Mother) - code | BPLACEC_ST_TER| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesAndProvincesVS] | 
| 252 | City/town/place of birth (Literal) | BRTHCITY| [PatientChildVitalRecords]|extension[patient-birthPlace].value[x].city | string |  | 
| 2 | State, U.S. Territory or Canadian Province of Birth (Infant) - code | BSTATE| [PatientChildVitalRecords]|extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesAndProvincesVS] | 
| 202 | Birthweight--Edit Flag | BW_BYPASS| [ObservationEditFlagBirthweight]|value | codeable | [PHVS_BirthWeightEditFlags_NCHS], See [Handling of edit flags] | 
| 201 | Birthweight in grams | BWG| [ObservationBirthWeightVitalRecords]|value | quantity |  | 
| 221 | Congenital Anomalies of the Newborn--Cyanotic congenital heart disease | CCHD| [ConditionCongenitalAnomalyOfNewborn]|code=12770006 | na | See [Note on missing data] | 
| 222 | Congenital Anomalies of the Newborn--Congenital diaphragmatic hernia | CDH| [ConditionCongenitalAnomalyOfNewborn]|code=17190001 | na | See [Note on missing data] | 
| 229 | Congenital Anomalies of the Newborn--Suspected Chromosomal disorder | CDIT| [ConditionCongenitalAnomalyOfNewborn]|code=409709004 | na | See [Note on missing data] | 
| 330 | Certifier Title | CERTIF| [PractitionerVitalRecords]|qualification.code | codeable | [PHVS_BirthAttendantTitles_NCHS] | 
| 328 | Certifier's Name | CERTIF_NAME| [PractitionerVitalRecords]|name.text | string |  | 
| 329 | Certifier's NPI | CERTIF_NPI| [PractitionerVitalRecords]|identifier:NPI | identifier |  | 
| 331 | Certifier ("Other" specified text) | CERTIF_OTH_TXT| [PractitionerVitalRecords]|qualification.code.text | string |  | 
| 336 | Date Signed by Certifier--Day | CERTIFIED_DY| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 335 | Date Signed by Certifier--Month | CERTIFIED_MO| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 334 | Date Signed by Certifier--Year | CERTIFIED_YR| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 174 | Obstetric Procedures--Cervical Cerclage(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CERV| [not implemented]| |  |  | 
| 171 | Infections Present--Chlamydia | CHAM| [ConditionInfectionPresentDuringPregnancy]|code=105629000 | na | See [Note on missing data] | 
| 186 | Characteristics of Labor & Delivery--Chorioamnionitis | CHOR| [ConditionChorioamnionitis]| | na | See [Note on missing data] | 
| 150 | Number of Cigarettes Smoked in 1st 3 months | CIGFN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=87298-6 | integer |  | 
| 152 | Number of Cigarettes Smoked in  third trimester (RECOMMENDED CHANGE EFFECTIVE 2004) | CIGLN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=64795-8 | integer |  | 
| 149 | Number of Cigarettes Smoked in 3 months prior to Pregnancy | CIGPN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=64794-1 | integer |  | 
| 151 | Number of Cigarettes Smoked in 2nd 3 months | CIGSN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=87299-4 | integer |  | 
| 20 | Residence of Mother--City | CITYC| [PatientMotherVitalRecords]|address.city.extension[ cityCode ] | integer | See [CityCodes] | 
| 271 | Mother's Residence City/Town (Literal) | CITYTEXT| [PatientMotherVitalRecords]|address.city | string |  | 
| 226 | Congenital Anomalies of the Newborn--Cleft Lip with or without Cleft Palate | CL| [ConditionCongenitalAnomalyOfNewborn]|code=80281008 | na | See [Note on missing data] | 
| 273 | Mother's Residence Country (Literal) | CNTRYTXT| [PatientMotherVitalRecords]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 10 | County of Birth | CNTYO| [PatientChildVitalRecords]|extension[patient-birthplace].value[x].district.extension[countyCode] | integer | See [CountyCodes] | 
| 23 | Residence of Mother--Country | COUNTRYC| [PatientMotherVitalRecords]|address.country | string | [ResidenceCountryVS] | 
| 21 | Residence of Mother--County | COUNTYC| [PatientMotherVitalRecords]|address.district.extension[countyCode] | integer | See [CountyCodes] | 
| 270 | Mother's Residence County (Literal) | COUNTYTXT| [PatientMotherVitalRecords]|address.district | string |  | 
| 227 | Congenital Anomalies of the Newborn--Cleft Palate Alone | CP| [ConditionCongenitalAnomalyOfNewborn]|code=87979003 | na | See [Note on missing data] | 
| 289 | Industry of Father (coded) | DAD_IN_C| [not implemented]| |  |  | 
| 288 | Industry of Father | DAD_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | 
| 285 | Occupation of Father (coded) | DAD_OC_C| [not implemented]| |  |  | 
| 284 | Occupation of Father | DAD_OC_T| [odh-UsualWork]|value.text | string(40) |  | 
| 279 | Father's Social Security Number | DAD_SSN| [RelatedPersonFatherNaturalVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code=”SS”  | string |  | 
| 274 | Father's First Name | DADFNAME| [RelatedPersonFatherNaturalVitalRecords]|name.given, name.use = official | string |  | 
| 276 | Father's Last Name | DADLNAME| [RelatedPersonFatherNaturalVitalRecords]|name.family, name.use = official | string |  | 
| 275 | Father's Middle Name | DADMNAME| [RelatedPersonFatherNaturalVitalRecords]|name.given, name.use = official | string |  | 
| 277 | Father's Surname Suffix | DADSUFFX| [RelatedPersonFatherNaturalVitalRecords]|name.suffix, name.use = official | string |  | 
| 156 | Date Last Normal Menses Began--Day | DLMP_DY| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 155 | Date Last Normal Menses Began--Month | DLMP_MO| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 154 | Date Last Normal Menses Began--Year | DLMP_YR| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 127 | Date of First Prenatal Care Visit--Day | DOFP_DY| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 126 | Date of First Prenatal Care Visit--Month | DOFP_MO| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 128 | Date of First Prenatal Care Visit--Year | DOFP_YR| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 130 | Date of Last Prenatal Care Visit--Day(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_DY| [not implemented]| |  |  | 
| 129 | Date of Last Prenatal Care Visit--Month(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_MO| [not implemented]| |  |  | 
| 131 | Date of Last Prenatal Care Visit--Year(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_YR| [not implemented]| |  |  | 
| 245 | Date of Registration--Day | DOR_DY| [CompositionProviderLiveBirthReport]|extension[dateFiledByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 244 | Date of Registration--Month | DOR_MO| [CompositionProviderLiveBirthReport]|extension[dateFiledByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 243 | Date of Registration--Year | DOR_YR| [CompositionProviderLiveBirthReport]|extension[dateFiledByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 228 | Congenital Anomalies of the Newborn--Down Syndrome | DOWT| [ConditionCongenitalAnomalyOfNewborn]|code=70156005 | na | See [Note on missing data] | 
| 139 | Mother's Weight at Delivery (in whole pounds) | DWGT| [ObservationMotherDeliveryWeightVitalRecords]|value | quantity |  | 
| 140 | Mother's Weight at Delivery--Edit Flag | DWGT_BYPASS| [ObservationEditFlagMothersDeliveryWeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags] | 
| 177 | Obstetric Procedures--Failed External Cephalic Version | ECVF| [ProcedureObstetric]|code=240278000, outcome=385671000 | codeable | [ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. Discussion needed: Is ECVF always the complement of ECVS?   If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? | 
| 176 | Obstetric Procedures--Successful External Cephalic Version | ECVS| [ProcedureObstetric]|code=240278000, outcome=385669000 | codeable | [ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. Discussion needed: Is ECVF always the complement of ECVS?   If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? | 
| 239 | Risk Factors--Hypertension Eclampsia   (RECOMMENDED ADDITION EFFECTIVE 2004) | EHYPE| [ConditionEclampsiaHypertensionVitalRecords]| | na | See [Note on missing data] | 
| 189 | Characteristics of Labor & Delivery--Anesthesia | ESAN| [ProcedureEpiduralOrSpinalAnesthesia]| | na | See [Note on missing data] | 
| 28 | Date of Birth (Father)--Edit Flag | FAGE_BYPASS| [ObservationEditFlagFathersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], See [Handling of edit flags] | 
| 281 | Father's Age (Calculated) | FAGE_CALC| [not implemented]| |  |  | 
| 238 | Father's Reported Age | FAGER| [PatientChildVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=Reference[ RelatedPersonFatherNaturalVitalRecords ] | quantity |  | 
| 290 | State, U.S. Territory or Canadian Province of Birth (Father) - code | FBPLACD_ST_TER_C| [RelatedPersonFatherNaturalVitalRecords]|extension[Extension-relatedperson-birthplace-vr].value[x].state | string | [StatesTerritoriesAndProvincesVS] | 
| 291 | Father's Country of Birth (Code) | FBPLACE_CNT_C| [RelatedPersonFatherNaturalVitalRecords]|extension[Extension-relatedperson-birthplace-vr].value[x].country | string | [BirthplaceCountryVS] | 
| 308 | Father's Country of Birth (Literal) | FBPLACE_CNTRY_TXT| [RelatedPersonFatherNaturalVitalRecords]|extension[Extension-relatedperson-birthplace-vr].value[x].country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 307 | State, U.S. Territory or Canadian Province of Birth (Father) - literal | FBPLACE_ST_TER_TXT| [RelatedPersonFatherNaturalVitalRecords]|extension[Extension-relatedperson-birthplace-vr].value[x].state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 27 | Date of Birth (Father)--Day | FDOB_DY| [RelatedPersonFatherNaturalVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 26 | Date of Birth (Father)--Month | FDOB_MO| [RelatedPersonFatherNaturalVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 25 | Date of Birth (Father)--Year | FDOB_YR| [RelatedPersonFatherNaturalVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 78 | Father's Education | FEDUC| [ObservationParentEducationLevelVitalRecords]|value, focus[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [EducationLevelVS] | 
| 79 | Father's Education--Edit Flag | FEDUC_BYPASS| [ObservationEditFlagFathersEducation]|value | codeable | [PHVS_EducationLevelEditFlags_NCHS], See [Handling of edit flags] | 
| 300 | Father's Hispanic Origin - Specify | FETHNIC_T| [Observation-tabulated-ethnicity-vr]| |  | Need to discuss - has this been deprecated? What is tabulated for? How to tell difference between ethnicC fields? | 
| 80 | Father of Hispanic Origin?--Mexican | FETHNIC1| [InputRaceAndEthnicity]|component[ HispanicMexican].valueCoding, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 81 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2| [InputRaceAndEthnicity]|component[ HispanicPuertoRican].valueCoding, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 82 | Father of Hispanic Origin?--Cuban | FETHNIC3| [InputRaceAndEthnicity]|component[ HispanicCuban ].valueCoding, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 83 | Father of Hispanic Origin?--Other | FETHNIC4| [InputRaceAndEthnicity]|component[ HispanicOther ].valueCoding, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 84 | Father of Hispanic Origin?--Other Literal | FETHNIC5| [InputRaceAndEthnicity]|component[ HispanicLiteral ].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 295 | Father's Hispanic Code for Literal | FETHNIC5C| [CodedRaceAndEthnicity]|component[HispanicCodeForLiteral].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | 
| 296 | Father's Edited Hispanic Origin Code | FETHNICE| [CodedRaceAndEthnicity]|component[HispanicCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | 
| 3 | Certificate Number | FILENO| [CompositionProviderLiveBirthReport]|extension[liveBirthCertificateNumber].value | identifier | Used for Jurisdiction Report and Coded Race and Ethnicity Compositions also | 
| 188 | Characteristics of Labor & Delivery--Fetal Intolerance(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | FINT| [not implemented]| |  |  | 
| 12 | Facility ID (NPI) - if available | FNPI| [EncounterBirth]|location.location.id | string |  | 
| 301 | Father's Race - Specify | FRACE_T| [Observation-race-vr]| |  | Need to discuss - has this been deprecated? What is tabulated for? How to tell difference between RaceC fields? | 
| 85 | Father's Race--White | FRACE1| [InputRaceAndEthnicity]|component[ White].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 94 | Father's Race--Other Asian | FRACE10| [InputRaceAndEthnicity]|component[ OtherAsian].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 95 | Father's Race--Native Hawaiian | FRACE11| [InputRaceAndEthnicity]|component[ NativeHawaiian].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 96 | Father's Race--Guamanian or Chamorro | FRACE12| [InputRaceAndEthnicity]|component[ GuamanianOrChamorro].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 97 | Father's Race--Samoan | FRACE13| [InputRaceAndEthnicity]|component[ Samoan].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 98 | Father's Race--Other Pacific Islander | FRACE14| [InputRaceAndEthnicity]|component[ OtherPacificIslander].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 99 | Father's Race--Other | FRACE15| [InputRaceAndEthnicity]|component[ OtherRace].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 100 | Father's Race--First American Indian or Alaska Native Literal | FRACE16| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 116 | Father's Race Tabulation Variable 16C | FRACE16C| [CodedRaceAndEthnicity]|component[FirstAmericanIndianCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 101 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 117 | Father's Race Tabulation Variable 17C | FRACE17C| [CodedRaceAndEthnicity]|component[SecondAmericanIndianCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 102 | Father's Race--First Other Asian Literal | FRACE18| [InputRaceAndEthnicity]|component[ OtherAsianLiteral1].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 118 | Father's Race Tabulation Variable 18C | FRACE18C| [CodedRaceAndEthnicity]|component[FirstOtherAsianCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 103 | Father's Race--Second Other Asian Literal | FRACE19| [InputRaceAndEthnicity]|component[ OtherAsianLiteral2].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 119 | Father's Race Tabulation Variable 19C | FRACE19C| [CodedRaceAndEthnicity]|component[SecondOtherAsianCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 108 | Father's Race Tabulation Variable 1E | FRACE1E| [CodedRaceAndEthnicity]|component[FirstEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 86 | Father's Race--Black or African American | FRACE2| [InputRaceAndEthnicity]|component[ BlackOrAfricanAmerican].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 104 | Father's Race--First Other Pacific Islander Literal | FRACE20| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral1].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 120 | Father's Race Tabulation Variable 20C | FRACE20C| [CodedRaceAndEthnicity]|component[FirstOtherPacificIslanderCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 105 | Father's Race--Second Other Pacific Islander Literal | FRACE21| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral2].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 121 | Father's Race Tabulation Variable 21C | FRACE21C| [CodedRaceAndEthnicity]|component[SecondOtherPacificIslanderCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 106 | Father's Race--First Other Literal | FRACE22| [InputRaceAndEthnicity]|component[ OtherRaceLiteral1].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 122 | Father's Race Tabulation Variable 22C | FRACE22C| [CodedRaceAndEthnicity]|component[FirstOtherRaceCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 107 | Father's Race--Second Other Literal | FRACE23| [InputRaceAndEthnicity]|component[ OtherRaceLiteral2].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 123 | Father's Race Tabulation Variable 23C | FRACE23C| [CodedRaceAndEthnicity]|component[SecondOtherRaceCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 109 | Father's Race Tabulation Variable 2E | FRACE2E| [CodedRaceAndEthnicity]|component[SecondEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 87 | Father's Race--American Indian or Alaska Native | FRACE3| [InputRaceAndEthnicity]|component[ AmericanIndianOrAlaskanNative].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 110 | Father's Race Tabulation Variable 3E | FRACE3E| [CodedRaceAndEthnicity]|component[ThirdEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 88 | Father's Race--Asian Indian | FRACE4| [InputRaceAndEthnicity]|component[ AsianIndian].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 111 | Father's Race Tabulation Variable 4E | FRACE4E| [CodedRaceAndEthnicity]|component[FourthEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 89 | Father's Race--Chinese | FRACE5| [InputRaceAndEthnicity]|component[ Chinese].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 112 | Father's Race Tabulation Variable 5E | FRACE5E| [CodedRaceAndEthnicity]|component[FifthEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 90 | Father's Race--Filipino | FRACE6| [InputRaceAndEthnicity]|component[ Filipino].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 113 | Father's Race Tabulation Variable 6E | FRACE6E| [CodedRaceAndEthnicity]|component[SixthEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 91 | Father's Race--Japanese | FRACE7| [InputRaceAndEthnicity]|component[ Japanese].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 114 | Father's Race Tabulation Variable 7E | FRACE7E| [CodedRaceAndEthnicity]|component[SeventhEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 92 | Father's Race--Korean | FRACE8| [InputRaceAndEthnicity]|component[ Korean].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 115 | Father's Race Tabulation Variable 8E | FRACE8E| [CodedRaceAndEthnicity]|component[EighthEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 93 | Father's Race--Vietnamese | FRACE9| [InputRaceAndEthnicity]|component[ Vietnamese].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 297 | Father's Bridged Race - NCHS Code | FRACEBG_C| [Observation-race-vr]| |  | Need to discuss - what is bridged race code for? Is this deprecated? | 
| 224 | Congenital Anomalies of the Newborn--Gastroschisis | GAST| [ConditionCongenitalAnomalyOfNewborn]|code=72951007 | na | See [Note on missing data] | 
| 158 | Risk Factors--Gestational Diabetes | GDIAB| [ConditionGestationalDiabetesVitalRecords]| | na | See [Note on missing data] | 
| 160 | Risk Factors--Hypertension Gestational   (SEE ADDITIONAL HYPERTENSION CATEGORY IN LOCATION 924 TO REFLECT RECOMMENDED CHANGES EFFECTIVE 2004) | GHYPE| [ConditionGestationalHypertensionVitalRecords]| | na | See [Note on missing data] | 
| 168 | Infections Present--Gonorrhea | GON| [ConditionInfectionPresentDuringPregnancy]|code=15628003 | na | See [Note on missing data] | 
| 172 | Infections Present--Hepatitis B | HEPB| [ConditionInfectionPresentDuringPregnancy]|code=66071002 | na | See [Note on missing data] | 
| 173 | Infections Present--Hepatitis C | HEPC| [ConditionInfectionPresentDuringPregnancy]|code=50711007 | na | See [Note on missing data] | 
| 134 | Mother's Height--Feet | HFT| [ObservationMotherHeightVitalRecords]|value | quantity |  | 
| 136 | Mother's Height--Edit Flag | HGT_BYPASS| [ObservationEditFlagMothersHeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags]  | 
| 135 | Mother's Height--Inches | HIN| [ObservationMotherHeightVitalRecords]|value | quantity |  | 
| 253 | Name of Facility of Birth | HOSP| [EncounterBirth]|location.location.name | string |  | 
| 302 | Facility Mother Moved From (if transferred) | HOSPFROM| [Encounter_Maternity]|hospitalization.origin.name | string |  | 
| 303 | Facility Infant Transferred To (if transferred w/in 24 hours) | HOSPTO| [EncounterBirth]|hospitalization.destination.name | string |  | 
| 170 | Infections Present--Herpes Simplex (HSV)  (RECOMMENDED DELETION EFFECTIVE 2004) | HSV| [not implemented]| |  |  | 
| 230 | Congenital Anomalies of the Newborn--Hypospadias | HYPO| [ConditionCongenitalAnomalyOfNewborn]|code=416010008 | na | See [Note on missing data] | 
| 9 | Date of Birth (Infant)--Day | IDOB_DY| [PatientChildVitalRecords]|birthDate | date |  | 
| 8 | Date of Birth (Infant)--Month | IDOB_MO| [PatientChildVitalRecords]|birthDate | date |  | 
| 1 | Date of Birth (Infant)--Year | IDOB_YR| [PatientChildVitalRecords]|birthDate | date |  | 
| 232 | Is Infant Living at Time of Report? | ILIV| [ObservationInfantLivingVitalRecords]|value | boolean | Discussion needed: IJE values are Y, N, U. However, encoding with Boolean does not capture Unknown | 
| 181 | Characteristics of Labor & Delivery--Induction of Labor | INDL| [ProcedureInductionOfLabor]| | na | See [Note on missing data] | 
| 332 | Infant's Medical Record Number | INF_MED_REC_NUM| [PatientChildVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code=”MR”  | string |  | 
| 164 | Risk Factors--Infertility Treatment  (SEE ADDITIONAL SUBCATEGORIES IN LOCATIONS 925-926) | INFT| [ProcedureInfertilityTreatmentVitalRecords]| | na | See [Note on missing data] | 
| 241 | Risk Factors--Infertility: Asst. Rep. Technology  (RECOMMENDED ADDITION EFFECTIVE 2004) | INFT_ART| [ProcedureAssistedFertilizationVitalRecords]| | na | See [Note on missing data] | 
| 240 | Risk Factors--Infertility: Fertility Enhancing Drugs  (RECOMMENDED ADDITION EFFECTIVE 2004) | INFT_DRG| [ProcedureArtificialInseminationVitalRecords]| | na | See [Note on missing data] | 
| 7 | Sex | ISEX| [PatientChildVitalRecords]|extension[us-core-birthsex].value | codeable | [http://hl7.org/fhir/us/core/ValueSet/birthsex] | 
| 231 | Was Infant Transferred Within 24 Hours of Delivery? | ITRAN| [EncounterBirth]|hospitalization.dischargeDisposition="other-hcf" | codeable | [http://hl7.org/fhir/us/core/ValueSet/us-core-discharge-disposition]. See [Note on missing data]. Need to discuss - clarity needed for values other than 'other-hcf' | 
| 247 | Child's First Name | KIDFNAME| [PatientChildVitalRecords]|name.given, name.use = official | string |  | 
| 249 | Child's Last Name | KIDLNAME| [PatientChildVitalRecords]|name.family, name.use = official | string |  | 
| 248 | Child's Middle Name | KIDMNAME| [PatientChildVitalRecords]|name.given, name.use = official  | string |  | 
| 250 | Child's Surname Suffix (moved from end) | KIDSUFFX| [PatientChildVitalRecords]|name.suffix, name.use = official | string |  | 
| 225 | Congenital Anomalies of the Newborn--Limb Reduction Defect | LIMB| [ConditionCongenitalAnomalyOfNewborn]|code=67341007 | na | See [Note on missing data] | 
| 24 | Residence of Mother--Inside City Limits | LIMITS| [PatientMotherVitalRecords]|address.extension[ withinCityLimitsIndicator ].value | codeable | [PHVS_YesNoUnknown_CDC] | 
| 209 | Number of Live Born | LIVEB| [ObservationNumberLiveBirthsThisDeliveryVitalRecords]|value | integer |  | 
| 17 | Date of Birth (Mother)--Edit Flag | MAGE_BYPASS| [ObservationEditFlagMothersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], See [Handling of edit flags] | 
| 280 | Mother's Age (Calculated) | MAGE_CALC| [not implemented]| |  |  | 
| 237 | Mother's Reported Age | MAGER| [PatientChildVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=Reference[ PatientMotherVitalRecords ] | quantity |  | 
| 315 | Mother's Mailing Address Street Address | MAIL_ADDRESS| [PatientMotherVitalRecords]|address.line | string |  | 
| 318 | Mother's Mailing Address City/Town (Literal) | MAIL_CITYTEXT| [PatientMotherVitalRecords]|address.city | string |  | 
| 320 | Mother's Mailing Address Country (Literal) | MAIL_CNTRYTXT| [PatientMotherVitalRecords]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 317 | Mother's Mailing Address County (Literal) | MAIL_COUNTYTXT| [PatientMotherVitalRecords]|address.district | string |  | 
| 313 | Mother's Mailing Address Post Directional | MAIL_POSTDIR| [PatientMotherVitalRecords]|address.extension[postdir] | string |  | 
| 310 | Mother's Mailing Address Pre Directional | MAIL_PREDIR| [PatientMotherVitalRecords]|address.extension[predir] | string |  | 
| 319 | Mother's Mailing Address State (Literal) | MAIL_STATETXT| [PatientMotherVitalRecords]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 312 | Mother's Mailing Address Street designator | MAIL_STDESIG| [PatientMotherVitalRecords]|address.extension[stdesig] | string |  | 
| 311 | Mother's Mailing Address Street name | MAIL_STNAME| [PatientMotherVitalRecords]|address.extension[stname] | string |  | 
| 309 | Mother's Mailing Address Street number | MAIL_STNUM| [PatientMotherVitalRecords]|address.extension[stnum] | string |  | 
| 314 | Mother's Mailing Address Unit or Apartment Number | MAIL_UNUM| [PatientMotherVitalRecords]|address.extension[unitnum] | string |  | 
| 316 | Mother's Mailing Address Zip Code and Zip+4 | MAIL_ZIPCODE| [PatientMotherVitalRecords]|address.postalCode | string |  | 
| 29 | Mother Married?--Ever (NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MARE| [not implemented]| |  |  | 
| 340 | For use of jurisdictions with domestic partnerships, othertypes of relationships. | MARITAL_DESCRIP| [PatientMotherVitalRecords]|maritalStatus.text | string | codeable.text should show up in differential with description from col F | 
| 30 | Mother Married?-- At Conception, at Birth or any Time in Between | MARN| [ObservationMotherMarriedDuringPregnancy]|value | codeable | [PHVS_YesNoUnknown_CDC] | 
| 210 | Matching Number | MATCH| [not implemented]| |  |  | 
| 306 | Mother's Country of Birth (Literal) | MBPLACE_CNTRY_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 305 | State, U.S. Territory or Canadian Province of Birth (Mother) - literal | MBPLACE_ST_TER_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | See [StateLiterals] | 
| 246 | Abnormal Conditions of the Newborn--Microcephaly | MCPH| [not implemented]| |  |  | 
| 16 | Date of Birth (Mother)--Day | MDOB_DY| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 15 | Date of Birth (Mother)--Month | MDOB_MO| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 14 | Date of Birth (Mother)--Year | MDOB_YR| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 187 | Characteristics of Labor & Delivery--Meconium Staining(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MECS| [not implemented]| |  |  | 
| 32 | Mother's Education | MEDUC| [ObservationParentEducationLevelVitalRecords]|value, focus[ PatientMotherVitalRecords ] | codeable | [EducationLevelVS] | 
| 33 | Mother's Education--Edit Flag | MEDUC_BYPASS| [ObservationEditFlagMothersEducation]|value | codeable | [PHVS_EditFlags_NCHS], why does this not use same edit flag as father's education [PHVS_EducationLevelEditFlags_NCHS]?  See [Handling of edit flags] | 
| 298 | Mother's Hispanic Origin - Specify | METHNIC_T| [Observation-tabulated-ethnicity-vr]| |  | Need to discuss, similar to FETHNIC_T | 
| 34 | Mother of Hispanic Origin?--Mexican | METHNIC1| [InputRaceAndEthnicity]|component[ HispanicMexican].valueCoding, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 35 | Mother of Hispanic Origin?--Puerto Rican | METHNIC2| [InputRaceAndEthnicity]|component[ HispanicPuertoRican].valueCoding, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 36 | Mother of Hispanic Origin?--Cuban | METHNIC3| [InputRaceAndEthnicity]|component[ HispanicCuban ].valueCoding, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 37 | Mother of Hispanic Origin?--Other | METHNIC4| [InputRaceAndEthnicity]|component[ HispanicOther ].valueCoding, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 38 | Mother of Hispanic Origin?--Other Literal | METHNIC5| [InputRaceAndEthnicity]|component[ HispanicLiteral ].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 292 | Mother's Hispanic Code for Literal | METHNIC5C| [CodedRaceAndEthnicity]|component[HispanicCodeForLiteral].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | 
| 293 | Mother's Edited Hispanic Origin Code | METHNICE| [CodedRaceAndEthnicity]|component[HispanicCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | 
| 145 | Date of Last Live Birth--Month | MLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 220 | Congenital Anomalies of the Newborn--Meningomyelocele/Spina Bifida | MNSB| [ConditionCongenitalAnomalyOfNewborn]|code=67531005 | na | See [Note on missing data] | 
| 287 | Industry of Mother (coded) | MOM_IN_C| [not implemented]| |  |  | 
| 286 | Industry of Mother | MOM_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | 
| 333 | Mother's Medical Record Number | MOM_MED_REC_NUM| [PatientMotherVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code=”MR”  | string |  | 
| 283 | Occupation of Mother (coded) | MOM_OC_C| [not implemented]| |  |  | 
| 282 | Occupation of Mother | MOM_OC_T| [odh-UsualWork]|value.text | string(40) |  | 
| 278 | Mother's Social Security Number | MOM_SSN| [PatientMotherVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code=”SS”  | string |  | 
| 258 | Mother's First Maiden Name | MOMFMNME| [PatientMotherVitalRecords]|name.given, name.use = maiden | string |  | 
| 254 | Mother's First Name | MOMFNAME| [PatientMotherVitalRecords]|name.given, name.use = official | string |  | 
| 256 | Mother's Last Name | MOMLNAME| [PatientMotherVitalRecords]|name.family, name.use = official | string |  | 
| 260 | Mother's Maiden Surname | MOMMAIDN| [PatientMotherVitalRecords]|name.family, name.use = maiden | string |  | 
| 255 | Mother's Middle Name | MOMMIDDL| [PatientMotherVitalRecords]|name.given, name.use = official  | string |  | 
| 259 | Mother's Middle Maiden Name | MOMMMID| [PatientMotherVitalRecords]|name.given, name.use = maiden | string |  | 
| 261 | Mother's Maiden Surname Suffix | MOMMSUFX| [PatientMotherVitalRecords]|name.suffix, name.use = maiden | string |  | 
| 257 | Mother's Surname Suffix  | MOMSUFFX| [PatientMotherVitalRecords]|name.suffix, name.use = official  | string |  | 
| 147 | Date of Last Other Pregnancy Outcome--Month | MOPO| [ObservationDateOfLastOtherPregnancyOutcome]|value | dateTime | See [PartialDatesAndTimes] | 
| 299 | Mother's Race - Specify | MRACE_T| [Observation-race-vr]| |  | Need to discuss, similar to FRACE_T | 
| 39 | Mother's Race--White | MRACE1| [InputRaceAndEthnicity]|component[ White].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 48 | Mother's Race--Other Asian | MRACE10| [InputRaceAndEthnicity]|component[ OtherAsian].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 49 | Mother's Race--Native Hawaiian | MRACE11| [InputRaceAndEthnicity]|component[ NativeHawaiian].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 50 | Mother's Race--Guamanian or Chamorro | MRACE12| [InputRaceAndEthnicity]|component[ GuamanianOrChamorro].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 51 | Mother's Race--Samoan | MRACE13| [InputRaceAndEthnicity]|component[ Samoan].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 52 | Mother's Race--Other Pacific Islander | MRACE14| [InputRaceAndEthnicity]|component[ OtherPacificIslander].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 53 | Mother's Race--Other | MRACE15| [InputRaceAndEthnicity]|component[ OtherRace].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 54 | Mother's Race--First American Indian or Alaska Native Literal | MRACE16| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 70 | Mother's Race Tabulation Variable 16C | MRACE16C| [CodedRaceAndEthnicity]|component[FirstAmericanIndianCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 55 | Mother's Race--Second American Indian or Alaska Native Literal | MRACE17| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 71 | Mother's Race Tabulation Variable 17C | MRACE17C| [CodedRaceAndEthnicity]|component[SecondAmericanIndianCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 56 | Mother's Race--First Other Asian Literal | MRACE18| [InputRaceAndEthnicity]|component[ OtherAsianLiteral1].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 72 | Mother's Race Tabulation Variable 18C | MRACE18C| [CodedRaceAndEthnicity]|component[FirstOtherAsianCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 57 | Mother's Race--Second Other Asian Literal | MRACE19| [InputRaceAndEthnicity]|component[ OtherAsianLiteral2].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 73 | Mother's Race Tabulation Variable 19C | MRACE19C| [CodedRaceAndEthnicity]|component[SecondOtherAsianCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 62 | Mother's Race Tabulation Variable 1E | MRACE1E| [CodedRaceAndEthnicity]|component[FirstEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable |  | 
| 40 | Mother's Race--Black or African American | MRACE2| [InputRaceAndEthnicity]|component[ BlackOrAfricanAmerican].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 58 | Mother's Race--First Other Pacific Islander Literal | MRACE20| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral1].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 74 | Mother's Race Tabulation Variable 20C | MRACE20C| [CodedRaceAndEthnicity]|component[FirstOtherPacificIslanderCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 59 | Mother's Race--Second Other Pacific Islander Literal | MRACE21| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral2].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 75 | Mother's Race Tabulation Variable 21C | MRACE21C| [CodedRaceAndEthnicity]|component[SecondOtherPacificIslanderCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 60 | Mother's Race--First Other Literal | MRACE22| [InputRaceAndEthnicity]|component[ OtherRaceLiteral1].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 76 | Mother's Race Tabulation Variable 22C | MRACE22C| [CodedRaceAndEthnicity]|component[FirstOtherRaceCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 61 | Mother's Race--Second Other Literal | MRACE23| [InputRaceAndEthnicity]|component[ OtherRaceLiteral2].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 77 | Mother's Race Tabulation Variable 23C | MRACE23C| [CodedRaceAndEthnicity]|component[SecondOtherRaceCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 63 | Mother's Race Tabulation Variable 2E | MRACE2E| [CodedRaceAndEthnicity]|component[SecondEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 41 | Mother's Race--American Indian or Alaska Native | MRACE3| [InputRaceAndEthnicity]|component[ AmericanIndianOrAlaskanNative].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 64 | Mother's Race Tabulation Variable 3E | MRACE3E| [CodedRaceAndEthnicity]|component[ThirdEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 42 | Mother's Race--Asian Indian | MRACE4| [InputRaceAndEthnicity]|component[ AsianIndian].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 65 | Mother's Race Tabulation Variable 4E | MRACE4E| [CodedRaceAndEthnicity]|component[FourthEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 43 | Mother's Race--Chinese | MRACE5| [InputRaceAndEthnicity]|component[ Chinese].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 66 | Mother's Race Tabulation Variable 5E | MRACE5E| [CodedRaceAndEthnicity]|component[FifthEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 44 | Mother's Race--Filipino | MRACE6| [InputRaceAndEthnicity]|component[ Filipino].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 67 | Mother's Race Tabulation Variable 6E | MRACE6E| [CodedRaceAndEthnicity]|component[SixthEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 45 | Mother's Race--Japanese | MRACE7| [InputRaceAndEthnicity]|component[ Japanese].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 68 | Mother's Race Tabulation Variable 7E | MRACE7E| [CodedRaceAndEthnicity]|component[SeventhEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 46 | Mother's Race--Korean | MRACE8| [InputRaceAndEthnicity]|component[ Korean].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 69 | Mother's Race Tabulation Variable 8E | MRACE8E| [CodedRaceAndEthnicity]|component[EighthEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 47 | Mother's Race--Vietnamese | MRACE9| [InputRaceAndEthnicity]|component[ Vietnamese].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 294 | Mother's Bridged Race - NCHS Code | MRACEBG_C| [Observation-race-vr]| |  | Need to discuss - what is bridged race code for? Is this deprecated? | 
| 195 | Maternal Morbidity--Maternal Transfusion | MTR| [ProcedureBloodTransfusion]| | na | See [Note on missing data] | 
| 214 | Abnormal Conditions of the Newborn--Admission to NICU | NICU| [ObservationNICUAdmission]| | na | See [Note on missing data] | 
| 166 | Risk Factors--Number Previous Cesareans | NPCES| [ObservationNumberPreviousCesareansVitalRecords]|value | integer |  | 
| 167 | Risk Factors--Number Previous Cesareans--Edit Flag | NPCES_BYPASS| [ObservationEditFlagNumberPreviousCesareans]|value | codeable | [PHVS_NumberOfPreviousCesareansEditFlags_NCHS], See [Handling of edit flags]  | 
| 132 | Total Number of Prenatal Care Visits | NPREV| [ObservationNumberPrenatalVisitsVitalRecords]|value | integer |  | 
| 133 | Total Number of Prenatal Care Visits--Edit Flag | NPREV_BYPASS| [ObservationEditFlagNumberPrenatalCareVisits]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags]  | 
| 183 | Characteristics of Labor & Delivery--Non-vertex Presentation (NCHS DELETED THIS ITEM EFFECTIVE 2011) | NVPR| [not implemented]| |  |  | 
| 223 | Congenital Anomalies of the Newborn--Omphalocele | OMPH| [ConditionCongenitalAnomalyOfNewborn]|code=18735004 | na | See [Note on missing data] | 
| 203 | Obstetric Estimation of Gestation | OWGEST| [ObservationGestationalAgeAtDeliveryVitalRecords]|value | quantity |  | 
| 204 | Obstetric Estimation of Gestation--Edit Flag | OWGEST_BYPASS| [ObservationEditFlagEstimateOfGestation]|value | codeable | [http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7567], See [Handling of edit flags]  | 
| 153 | Principal source of Payment for this delivery | PAY| [CoveragePrincipalPayerDelivery]|type | codeable | [ValueSetBirthAndFetalDeathFinancialClass]  | 
| 165 | Risk Factors--Previous Cesarean | PCES| [ObservationPreviousCesareanVitalRecords]| | na | See [Note on missing data] | 
| 157 | Risk Factors--Prepregnancy Diabetes | PDIAB| [ConditionPrepregnancyDiabetesVitalRecords]| | na | See [Note on missing data] | 
| 159 | Risk Factors--Prepregnancy Hypertension  | PHYPE| [ConditionPrepregnancyHypertensionVitalRecords]| | na | See [Note on missing data] | 
| 196 | Maternal Morbidity--Perineal Laceration | PLAC| [ConditionPerinealLaceration]| | na | See [Note on missing data] | 
| 342 | Blank for One-Byte Field 1 | PLACE1_1| [EmergingIssues]|component[EmergingIssue1_1].value | string(1) | formerly not implemented, used VRDR as example | 
| 343 | Blank for One-Byte Field 2 | PLACE1_2| [EmergingIssues]|component[EmergingIssue1_2].value | string(1) | formerly not implemented, used VRDR as example | 
| 344 | Blank for One-Byte Field 3 | PLACE1_3| [EmergingIssues]|component[EmergingIssue1_3].value | string(1) | formerly not implemented, used VRDR as example | 
| 345 | Blank for One-Byte Field 4 | PLACE1_4| [EmergingIssues]|component[EmergingIssue1_4].value | string(1) | formerly not implemented, used VRDR as example | 
| 346 | Blank for One-Byte Field 5 | PLACE1_5| [EmergingIssues]|component[EmergingIssue1_5].value | string(1) | formerly not implemented, used VRDR as example | 
| 347 | Blank for One-Byte Field 6 | PLACE1_6| [EmergingIssues]|component[EmergingIssue1_6].value | string(1) | formerly not implemented, used VRDR as example | 
| 351 | Blank for Twenty-Byte Field | PLACE20| [EmergingIssues]|component[EmergingIssue20].value | string(20) | formerly not implemented, used VRDR as example | 
| 348 | Blank for Eight-Byte Field 1 | PLACE8_1| [EmergingIssues]|component[EmergingIssue8_1].value | string(8) | formerly not implemented, used VRDR as example | 
| 349 | Blank for Eight-Byte Field 2 | PLACE8_2| [EmergingIssues]|component[EmergingIssue8_2].value | string(8) | formerly not implemented, used VRDR as example | 
| 350 | Blank for Eight-Byte Field 3 | PLACE8_3| [EmergingIssues]|component[EmergingIssue8_3].value | string(8) | formerly not implemented, used VRDR as example | 
| 143 | Previous Live Births Now Dead | PLBD| [ObservationNumberBirthsNowDeadVitalRecords]|value | integer |  | 
| 142 | Previous Live Births Now Living | PLBL| [ObservationNumberBirthsNowLivingVitalRecords]|value | integer |  | 
| 207 | Plurality | PLUR| [PatientChildVitalRecords]|extension[patient-multipleBirthTotal].valuePositiveInt | integer |  | 
| 211 | Plurality--Edit Flag | PLUR_BYPASS| [ObservationEditFlagPlurality]|value | codeable | [PHVS_PluralityEditFlags_NCHS], See [Handling of edit flags] | 
| 144 | Previous Other Pregnancy Outcomes | POPO| [ObservationNumberOtherPregnancyOutcomesVitalRecords]|value | integer |  | 
| 266 | Residence Post Directional | POSTDIR| [PatientMotherVitalRecords]|address.extension[postdir] | string |  | 
| 161 | Risk Factors--Previous Preterm Births | PPB| [ObservationPreviousPretermBirthVitalRecords]| | na | See [Note on missing data] | 
| 162 | Risk Factors--Poor Pregnancy Outcomes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PPO| [not implemented]| |  |  | 
| 263 | Residence Pre Directional | PREDIR| [PatientMotherVitalRecords]|address.extension[predir] | string |  | 
| 192 | Method of Delivery--Fetal Presentation | PRES| [ObservationFetalPresentation]|value | codeable | [ValueSetFetalPresentations] | 
| 179 | Onset of Labor--Precipitous Labor(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PRIC| [not implemented]| |  |  | 
| 180 | Onset of Labor--Prolonged Labor(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PROL| [not implemented]| |  |  | 
| 178 | Onset of Labor--Premature Rupture of Membranes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PROM| [not implemented]| |  |  | 
| 137 | Mother's Prepregnancy Weight (in whole pounds) | PWGT| [ObservationMotherPrepregnancyWeightVitalRecords]|value | quantity |  | 
| 138 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS| [ObservationEditFlagMothersPrepregnancyWeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags] | 
| 236 | NCHS USE ONLY: Receipt date -- Day | R_DY| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 235 | NCHS USE ONLY: Receipt date -- Month | R_MO| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 234 | NCHS USE ONLY: Receipt date -- Year | R_YR| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 339 | Date Filed by Registrar--Day | REGISTER_DY| [not implemented]| |  |  | 
| 338 | Date Filed by Registrar--Month | REGISTER_MO| [not implemented]| |  |  | 
| 337 | Date Filed by Registrar--Year | REGISTER_YR| [not implemented]| |  |  | 
| 341 | Replacement (amended) record | REPLACE| [not implemented]| |  |  | 
| 193 | Method of Delivery--Route and Method of Delivery | ROUT| [ProcedureFinalRouteMethodDelivery]|code | codeable | [ValueSetDeliveryRoutes] | 
| 197 | Maternal Morbidity--Ruptured Uterus | RUT| [ConditionRupturedUterus]| | na | See [Note on missing data] | 
| 217 | Abnormal Conditions of the Newborn--Seizures | SEIZ| [ConditionSeizure]| | na | See [Note on missing data] | 
| 13 | Facility ID (State-Assigned) | SFN| [EncounterBirth]|location.location.identifier | Identifier |  | 
| 208 | Set Order | SORD| [PatientChildVitalRecords]|multipleBirth[x] | integer |  | 
| 325 | SSA/EAB Birth Certificate Number Code | SSN_BRTH_CRT_NO| [not implemented]| |  |  | 
| 322 | SSA/EAB Citizenship Code | SSN_CITIZEN_CD| [not implemented]| |  |  | 
| 324 | SSA/EAB Feedback Release | SSN_FEEDBACK| [not implemented]| |  |  | 
| 323 | SSA/EAB Multiple Birth Code | SSN_MULT_BTH_CD| [not implemented]| |  |  | 
| 321 | Social Security Number Requested for Child? | SSN_REQ| [ObservationSSNRequestedForChild]|value | boolean |  | 
| 22 | State, U.S. Territory or Canadian Province of Residence (Mother) - code | STATEC| [PatientMotherVitalRecords]|address.state | string | [StatesTerritoriesAndProvincesVS] | 
| 272 | State, U.S. Territory or Canadian Province of Residence (Mother) - literal | STATETXT| [PatientMotherVitalRecords]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 265 | Residence Street designator | STDESIG| [PatientMotherVitalRecords]|address.extension[stdesig] | string |  | 
| 184 | Characteristics of Labor & Delivery--Steroids | STER| [ObservationSteroidsFetalLungMaturation]| | na | See [Note on missing data] | 
| 264 | Residence Street name | STNAME| [PatientMotherVitalRecords]|address.extension[stname] | string |  | 
| 262 | Residence Street Number | STNUM| [PatientMotherVitalRecords]|address.extension[stnum] | string |  | 
| 215 | Abnormal Conditions of the Newborn--Surfactant Replacement | SURF| [ProcedureSurfactantReplacementTherapy]| | na | See [Note on missing data] | 
| 169 | Infections Present--Syphilis | SYPH| [ConditionInfectionPresentDuringPregnancy]|code=76272004 | na | See [Note on missing data] | 
| 6 | Time of Birth | TB| [PatientChildVitalRecords]|birthDate.extension[patient-birthTime] |  | See [PartialDatesAndTimes] | 
| 194 | Method of Delivery--Trial of Labor Attempted | TLAB| [ObservationLaborTrialAttempted]|value | boolean | Discussion needed: IJE values are Y, N, U, and X (not applicable). However, encoding with Boolean does not capture Unknown or Not Applicable | 
| 175 | Obstetric Procedures--Tocolysis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | TOC| [not implemented]| |  |  | 
| 125 | Mother Transferred? | TRAN| [Encounter_Maternity]|hospitalization.admitSource = "hosp-trans" | codeable | [http://hl7.org/fhir/ValueSet/encounter-admit-source], See [Note on missing data]. Need to discuss - clarity needed for values other than 'hosp-trans' | 
| 198 | Maternal Morbidity--Unplanned Hysterectomy | UHYS| [ProcedureUnplannedHysterectomy]| | na | See [Note on missing data] | 
| 267 | Residence Unit or Apartment Number | UNUM| [PatientMotherVitalRecords]|address.extension[unitnum] | string |  | 
| 200 | Maternal Morbidity--Unplanned Operation(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | UOPR| [not implemented]| |  |  | 
| 163 | Risk Factors--Vaginal Bleeding  (RECOMMENDED DELETION EFFECTIVE2004) | VB| [not implemented]| |  |  | 
| 4 | Void flag | VOID| [not implemented]| |  |  | 
| 141 | Did Mother get WIC Food for Herself? | WIC| [ObservationMotherReceivedWICFood]|value | codeable | [PHVS_YesNoUnknown_CDC] | 
| 146 | Date of Last Live Birth--Year | YLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 148 | Date of Last Other Pregnancy Outcome--Year | YOPO| [ObservationDateOfLastOtherPregnancyOutcome]|value | dateTime | See [PartialDatesAndTimes] | 
| 269 | Mother's Residence Zip Code and Zip+4 | ZIPCODE| [PatientMotherVitalRecords]|address.postalCode | string |  | 
{: .grid }
{% include markdown-link-references.md %}
### Fetal Death IJE Mapping

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 31 | FILLER | *NO IJE MAPPING*| [not implemented]| |  |  | 
| 179 | FILLER | *NO IJE MAPPING*| [not implemented]| |  |  | 
| 253 | Mother's Residence Street Address | ADDRESS| [PatientMotherVitalRecords]|address.line | string |  | 
| 231 | Place of Delivery Street Address | ADDRESS_D| [Encounter_Maternity]|location.location.address.line | string |  | 
| 141 | Maternal Morbidity--Admit to Intensive Care | AINT| [ObservationICUAdmission]| | na | See [Note on missing data] | 
| 218 | Alcohol Used? | ALCOHOL| [not implemented]| |  |  | 
| 223 | Fetus Legal Name--Alias | ALIAS| [not implemented]| |  |  | 
| 156 | Congenital Anomalies of the Fetus--Anencephaly(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | ANEN| [not implemented]| |  |  | 
| 252 | Mother's Residence Unit or Apartment Number | APTNUMB| [PatientMotherVitalRecords]|address.extension[unitnum] | string |  | 
| 230 | Place of Delivery Unit or Apartment Number | APTNUMB_D| [Encounter_Maternity]|location.location.address.extension[unitnum] | string |  | 
| 78 | Attendant | ATTEND| [PractitionerVitalRecords]|qualification.code | codeable | [PHVS_BirthAttendantTitles_NCHS] | 
| 340 | Attendant's Name | ATTEND_NAME| [PractitionerVitalRecords]|name.text | string |  | 
| 341 | Attendant's NPI | ATTEND_NPI| [PractitionerVitalRecords]|identifier:NPI | string |  | 
| 342 | Attendant ("Other" specified text) | ATTEND_OTH_TXT| [PractitionerVitalRecords]|qualification.code.text | string |  | 
| 131 | Method of Delivery--Attempted Forceps (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTF| [not implemented]| |  |  | 
| 132 | Method of Delivery--Attempted Vacuum (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTV| [not implemented]| |  |  | 
| 148 | Was an Autopsy Performed? | AUTOP| [ObservationAutopsyPerformedIndicatorVitalRecords]|value | codeable | [PHVS_AutopsyExamination_NCHS] | 
| 150 | Were Autopsy or Histological Placental Examination Results Used in Determining the Cause of Fetal Death? | AUTOPF| [ObservationAutopsyHistologicalExamResultsUsed]|value | codeable | [ValueSetYesNoNotApplicable], sandbox uses boolean, BFDR IG uses codeable | 
| 5 | Auxiliary State file number | AUXNO| [CompositionProviderFetalDeathReport]|extension[fetalDeathLocalFileNumber].value | identifier | Used for Jurisdiction Report also | 
| 128 | Infections Present--Parvo virus(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | B19| [not implemented]| |  |  | 
| 364 | Blank for future expansion | BLANK| [not implemented]| |  |  | 
| 365 | Blank for Jurisdictional Use Only | BLANK2| [not implemented]| |  |  | 
| 19 | Mother's Birthplace--Country | BPLACEC_CNT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country  | string | [ResidenceCountryVS] | 
| 18 | State, U.S. Territory or Canadian Province of Birth (Mother) - code | BPLACEC_ST_TER| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesAndProvincesVS] | 
| 158 | Congenital Anomalies of the Fetus--Cyanotic congenital heart disease(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CCHD| [not implemented]| |  |  | 
| 159 | Congenital Anomalies of the Fetus--Congenital diaphragmatic hernia(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CDH| [not implemented]| |  |  | 
| 166 | Congenital Anomalies of the Fetus--Suspected Chromosomal disorder(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CDIT| [not implemented]| |  |  | 
| 349 | Date Signed by Certifier--Day | CERTIFIED_DY| [Encounter_Maternity]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 348 | Date Signed by Certifier--Month | CERTIFIED_MO| [Encounter_Maternity]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 347 | Date Signed by Certifier--Year | CERTIFIED_YR| [Encounter_Maternity]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 124 | Infections Present--Chlamydia(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CHAM| [not implemented]| |  |  | 
| 104 | Number of Cigarettes Smoked in 1st 3 months | CIGFN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=87298-6 | integer |  | 
| 106 | Number of Cigarettes Smoked in third trimester (RECOMMENDED CHANGE EFFECTIVE 2004) | CIGLN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=64795-8 | integer |  | 
| 103 | Number of Cigarettes Smoked in 3 months prior to Pregnancy | CIGPN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=64794-1 | integer |  | 
| 105 | Number of Cigarettes Smoked in 2nd 3 months | CIGSN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=87299-4 | integer |  | 
| 234 | Place of Delivery City/Town/Place (literal)  | CITY_D| [Encounter_Maternity]|location.location.address.city | string |  | 
| 20 | Residence of Mother--City/Town | CITYC| [PatientMotherVitalRecords]|address.city.extension[ cityCode ] | integer | See [CityCodes] | 
| 256 | Mother's Residence City/Town/Place (literal)  | CITYTXT| [PatientMotherVitalRecords]|address.city | string |  | 
| 163 | Congenital Anomalies of the Fetus--Cleft Lip with or without Cleft Palate(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CL| [not implemented]| |  |  | 
| 127 | Infections Present--Cytomeglovirus(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CMV| [not implemented]| |  |  | 
| 258 | Mother's Residence Country (literal) | CNTRYTXT| [PatientMotherVitalRecords]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 233 | Place of Delivery County (literal) | CNTY_D| [Encounter_Maternity]|location.location.address.district | string |  | 
| 10 | County of Delivery | CNTYO| [Encounter_Maternity]|location.location.address.district.extension[countyCode] | integer | See [CountyCodes] | 
| 180 | Initiating cause/condition - Rupture of membranes prior to onset of labor | COD18a1| [ConditionFetalDeathCauseOrCondition]|code=44223004 | na |  | 
| 189 | Initiating cause/condition - Other obstetrical or pregnancy complications literal | COD18a10| [ConditionFetalDeathCauseOrCondition]|code=PHC1299, code.text | string |  | 
| 190 | Initiating cause/condition - Fetal anomaly literal | COD18a11| [ConditionFetalDeathCauseOrCondition]|code=702709008, code.text | string |  | 
| 191 | Initiating cause/condition - Fetal injury literal | COD18a12| [ConditionFetalDeathCauseOrCondition]|code=277489001, code.text | string |  | 
| 192 | Initiating cause/condition - Fetal infection literal | COD18a13| [ConditionFetalDeathCauseOrCondition]|code=128270001, code.text | string |  | 
| 193 | Initiating cause/condition - Other fetal conditions/disorders literal | COD18a14| [ConditionFetalDeathCauseOrCondition]|code=PHC1300, code.text | string |  | 
| 181 | Initiating cause/condition - Abruptio placenta | COD18a2| [ConditionFetalDeathCauseOrCondition]|code=415105001 | na |  | 
| 182 | Initiating cause/condition - Placental insufficiency | COD18a3| [ConditionFetalDeathCauseOrCondition]|code=237292005 | na |  | 
| 183 | Initiating cause/condition - Prolapsed cord | COD18a4| [ConditionFetalDeathCauseOrCondition]|code=270500004 | na |  | 
| 184 | Initiating cause/condition - Chorioamnionitis | COD18a5| [ConditionFetalDeathCauseOrCondition]|code=11612004 | na |  | 
| 185 | Initiating cause/condition - Other complications of placenta, cord, or membranes | COD18a6| [ConditionFetalDeathCauseOrCondition]|code=PHC1298, code.text | string |  | 
| 186 | Initiating cause/condition - Unknown | COD18a7| [ConditionFetalDeathCauseOrCondition]|code=UNK | na |  | 
| 187 | Initiating cause/condition - Maternal conditions/diseases literal | COD18a8| [ConditionFetalDeathCauseOrCondition]|code=PHC1301, code.text | string |  | 
| 188 | Initiating cause/condition - Other complications of placenta, cord, or membranes literal | COD18a9| [ConditionFetalDeathCauseOrCondition]|code=PHC1298, code.text | string |  | 
| 194 | Other significant causes or conditions - Rupture of membranes prior to onset of labor | COD18b1| [ConditionFetalDeathOtherCauseOrCondition]|code=44223004 | na |  | 
| 203 | Other significant causes or conditions - Other obstetrical or pregnancy complications literal | COD18b10| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1299, code.text | string |  | 
| 204 | Other significant causes or conditions - Fetal anomaly literal | COD18b11| [ConditionFetalDeathOtherCauseOrCondition]|code=702709008, code.text | string |  | 
| 205 | Other significant causes or conditions - Fetal injury literal | COD18b12| [ConditionFetalDeathOtherCauseOrCondition]|code=277489001, code.text | string |  | 
| 206 | Other significant causes or conditions - Fetal infection literal | COD18b13| [ConditionFetalDeathOtherCauseOrCondition]|code=128270001, code.text | string |  | 
| 207 | Other significant causes or conditions - Other fetal conditions/disorders literal | COD18b14| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1300, code.text | string |  | 
| 195 | Other significant causes or conditions - Abruptio placenta | COD18b2| [ConditionFetalDeathOtherCauseOrCondition]|code=415105001 | na |  | 
| 196 | Other significant causes or conditions  - Placental insufficiency | COD18b3| [ConditionFetalDeathOtherCauseOrCondition]|code=237292005 | na |  | 
| 197 | Other significant causes or conditions - Prolapsed cord | COD18b4| [ConditionFetalDeathOtherCauseOrCondition]|code=270500004 | na |  | 
| 198 | Other significant causes or conditions - Chorioamnionitis | COD18b5| [ConditionFetalDeathOtherCauseOrCondition]|code=11612004 | na |  | 
| 199 | Other significant causes or conditions - Other complications of placenta, cord, or membranes | COD18b6| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1298 | na | need to check this one - PHC1298 is 'Complications of Placenta, Cord, or Membranes: Other (Specify)' but IJE field is Y, N (not literal text) | 
| 200 | Other significant causes or conditions - Unknown | COD18b7| [ConditionFetalDeathOtherCauseOrCondition]|code=UNK | na |  | 
| 201 | Other significant causes or conditions - Maternal conditions/diseases literal | COD18b8| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1301, code.text | string |  | 
| 202 | Other significant causes or conditions - Other complications of placenta, cord, or membranes literal | COD18b9| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1298, code.text | string |  | 
| 236 | Place of Delivery Country (literal) | COUNTRY_D| [Encounter_Maternity]|location.location.address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 23 | Residence of Mother--Country | COUNTRYC| [PatientMotherVitalRecords]|address.country | string | [ResidenceCountryVS] | 
| 21 | Residence of Mother--County | COUNTYC| [PatientMotherVitalRecords]|address.district.extension[countyCode] | integer | See [CountyCodes] | 
| 255 | Mother's Residence County (literal) | COUNTYTXT| [PatientMotherVitalRecords]|address.district | string |  | 
| 164 | Congenital Anomalies of the Fetus--Cleft Palate Alone(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CP| [not implemented]| |  |  | 
| 276 | Industry of Father (coded) | DAD_IN_C| [not implemented]| |  |  | 
| 275 | Industry of Father | DAD_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | 
| 272 | Occupation of Father (coded) | DAD_OC_C| [not implemented]| |  |  | 
| 271 | Occupation of Father | DAD_OC_T| [odh-UsualWork]|value.text | string(40) |  | 
| 266 | Father's Social Security Number | DAD_SSN| [RelatedPersonFatherNaturalVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code=”SS”  | string |  | 
| 261 | Father's Legal First Name | DADFNAME| [RelatedPersonFatherNaturalVitalRecords]|name.given, name.use = official | string |  | 
| 263 | Father's Legal Last Name | DADLNAME| [RelatedPersonFatherNaturalVitalRecords]|name.family, name.use = official | string |  | 
| 262 | Father's Legal Middle Name | DADMNAME| [RelatedPersonFatherNaturalVitalRecords]|name.given, name.use = official | string |  | 
| 264 | Father's Legal Surname Suffix | DADSUFFIX| [RelatedPersonFatherNaturalVitalRecords]|name.suffix, name.use = official | string |  | 
| 109 | Date Last Normal Menses Began--Day | DLMP_DY| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 108 | Date Last Normal Menses Began--Month | DLMP_MO| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 107 | Date Last Normal Menses Began--Year | DLMP_YR| [ObservationLastMenstrualPeriodVitalRecords]|value | dateTime | See [PartialDatesAndTimes] | 
| 81 | Date of First Prenatal Care Visit--Day | DOFP_DY| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 80 | Date of First Prenatal Care Visit--Month | DOFP_MO| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 82 | Date of First Prenatal Care Visit--Year | DOFP_YR| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 84 | Date of Last Prenatal Care Visit--Day(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_DY| [not implemented]| |  |  | 
| 83 | Date of Last Prenatal Care Visit--Month(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_MO| [not implemented]| |  |  | 
| 85 | Date of Last Prenatal Care Visit--Year(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_YR| [not implemented]| |  |  | 
| 178 | Date of Registration--Day | DOR_DY| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 177 | Date of Registration--Month | DOR_MO| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 176 | Date of Registration--Year | DOR_YR| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 165 | Congenital Anomalies of the Fetus--Down Syndrome(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOWT| [not implemented]| |  |  | 
| 11 | Place Where Delivery Occurred | DPLACE| [Encounter_Maternity]|location.physicalType | codeable | [ValueSetBirthDeliveryOccurred] | 
| 2 | State, U.S. Territory or Canadian Province of Place of Delivery - code | DSTATE| [PatientDecedentFetusVitalRecords]|extension[patient-birthPlace].value[x].state | codeable | [StatesTerritoriesAndProvincesVS]  | 
| 93 | Mother's Weight at Delivery(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DWGT| [not implemented]| |  |  | 
| 94 | Mother's Weight at Delivery--Edit Flag(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DWGT_BYPASS| [not implemented]| |  |  | 
| 173 | Risk Factors--Hypertension Eclampsia (added after 2004) | EHYPE| [ConditionEclampsiaHypertensionVitalRecords]| | na | See [Note on missing data] | 
| 147 | Estimated time of fetal death | ETIME| [ObservationFetalDeathTimePoint]|value | codeable | [ValueSetFetalDeathTimePoints] | 
| 28 | Date of Birth (Father)--Edit Flag | FAGE_BYPASS| [ObservationEditFlagFathersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], See [Handling of edit flags] | 
| 268 | Father's Age (Calculated) | FAGE_CALC| [not implemented]| |  |  | 
| 172 | Father's Reported Age | FAGER| [PatientDecedentFetusVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=Reference[ RelatedPersonFatherNaturalVitalRecords ] | quantity |  | 
| 277 | State, U.S. Territory or Canadian Province of Birth (Father) - code | FBPLACD_ST_TER_C| [RelatedPersonFatherNaturalVitalRecords]|extension[Extension-relatedperson-birthplace-vr].value[x].state | string | [StatesTerritoriesAndProvincesVS] | 
| 278 | Father's Country of Birth (Code) | FBPLACE_CNT_C| [RelatedPersonFatherNaturalVitalRecords]|extension[Extension-relatedperson-birthplace-vr].value[x].country | string | [BirthplaceCountryVS] | 
| 282 | Father's Country of Birth (Literal) | FBPLACE_CNTRY_TXT| [RelatedPersonFatherNaturalVitalRecords]|extension[Extension-relatedperson-birthplace-vr].value[x].country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 281 | State, U.S. Territory or Canadian Province of Birth (Father) - literal | FBPLACE_ST_TER_TXT| [RelatedPersonFatherNaturalVitalRecords]|extension[Extension-relatedperson-birthplace-vr].value[x].state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 27 | Date of Birth (Father)--Day | FDOB_DY| [RelatedPersonFatherNaturalVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 26 | Date of Birth (Father)--Month | FDOB_MO| [RelatedPersonFatherNaturalVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 25 | Date of Birth (Father)--Year | FDOB_YR| [RelatedPersonFatherNaturalVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 9 | Date of Delivery (Fetus)--Day | FDOD_DY| [PatientDecedentFetusVitalRecords]|birthDate |  |  | 
| 8 | Date of Delivery (Fetus)--Month | FDOD_MO| [PatientDecedentFetusVitalRecords]|birthDate |  |  | 
| 1 | Date of Delivery (Fetus)--Year | FDOD_YR| [PatientDecedentFetusVitalRecords]|birthDate |  |  | 
| 153 | Number of Fetal Deaths | FDTH| [ObservationNumberFetalDeathsThisDeliveryVitalRecords]|value | integer |  | 
| 283 | Father's Education | FEDUC| [ObservationParentEducationLevelVitalRecords]|value, focus[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [EducationLevelVS] | 
| 284 | Father's Education--Edit Flag | FEDUC_BYPASS| [ObservationEditFlagFathersEducation]|value | codeable | [PHVS_EducationLevelEditFlags_NCHS], See [Handling of edit flags] | 
| 219 | Fetus First Name | FETFNAME| [PatientDecedentFetusVitalRecords]|name.given, name.use = official | string | See [Note on Decedent Name] | 
| 337 | Father's Hispanic Origin - Specify | FETHNIC_T| [Observation-tabulated-ethnicity-vr]| |  | Need to discuss - has this been deprecated? What is tabulated for? How to tell difference between ethnicC fields? | 
| 285 | Father of Hispanic Origin?--Mexican | FETHNIC1| [InputRaceAndEthnicity]|component[ HispanicMexican].valueCoding, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 286 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2| [InputRaceAndEthnicity]|component[ HispanicPuertoRican].valueCoding, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 287 | Father of Hispanic Origin?--Cuban | FETHNIC3| [InputRaceAndEthnicity]|component[ HispanicCuban ].valueCoding, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 288 | Father of Hispanic Origin?--Other | FETHNIC4| [InputRaceAndEthnicity]|component[ HispanicOther ].valueCoding, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 289 | Father of Hispanic Origin?--Other Literal | FETHNIC5| [InputRaceAndEthnicity]|component[ HispanicLiteral ].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 332 | Father's Hispanic Code for Literal | FETHNIC5C| [CodedRaceAndEthnicity]|component[HispanicCodeForLiteral].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | 
| 333 | Father's Edited Hispanic Origin Code | FETHNICE| [CodedRaceAndEthnicity]|component[HispanicCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | 
| 221 | Fetus Last Name | FETLNAME| [PatientDecedentFetusVitalRecords]|name.family, name.use = official. (absence is equivalent to ‘UNKNOWN’.) | string  | See [Note on Decedent Name] | 
| 220 | Fetus Middle Name | FETMNAME| [PatientDecedentFetusVitalRecords]|name.given, name.use = official | string | See [Note on Decedent Name] | 
| 3 | Certificate Number | FILENO| [CompositionProviderFetalDeathReport]|extension[fetalDeathReportNumber].value | identifier | Used for Jurisdiction Report, Coded Cause of Fetal Death, and Coded Race and Ethnicity Compositions also | 
| 12 | Facility ID (NPI) - If available | FNPI| [Encounter_Maternity]|location.location.id | string |  | 
| 338 | Father's Race - Specify | FRACE_T| [Observation-race-vr]| |  | Need to discuss - has this been deprecated? What is tabulated for? How to tell difference between RaceC fields? | 
| 290 | Father's Race--White | FRACE1| [InputRaceAndEthnicity]|component[ White].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 299 | Father's Race--Other Asian | FRACE10| [InputRaceAndEthnicity]|component[ OtherAsian].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 300 | Father's Race--Native Hawaiian | FRACE11| [InputRaceAndEthnicity]|component[ NativeHawaiian].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 301 | Father's Race--Guamanian or Chamorro | FRACE12| [InputRaceAndEthnicity]|component[ GuamanianOrChamorro].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 302 | Father's Race--Samoan | FRACE13| [InputRaceAndEthnicity]|component[ Samoan].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 303 | Father's Race--Other Pacific Islander | FRACE14| [InputRaceAndEthnicity]|component[ OtherPacificIslander].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 304 | Father's Race--Other | FRACE15| [InputRaceAndEthnicity]|component[ OtherRace].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 305 | Father's Race--First American Indian or Alaska Native Literal | FRACE16| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 321 | Father's Race Tabulation Variable 16C | FRACE16C| [CodedRaceAndEthnicity]|component[FirstAmericanIndianCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 306 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 322 | Father's Race Tabulation Variable 17C | FRACE17C| [CodedRaceAndEthnicity]|component[SecondAmericanIndianCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 307 | Father's Race--First Other Asian Literal | FRACE18| [InputRaceAndEthnicity]|component[ OtherAsianLiteral1].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 323 | Father's Race Tabulation Variable 18C | FRACE18C| [CodedRaceAndEthnicity]|component[FirstOtherAsianCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 308 | Father's Race--Second Other Asian Literal | FRACE19| [InputRaceAndEthnicity]|component[ OtherAsianLiteral2].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 324 | Father's Race Tabulation Variable 19C | FRACE19C| [CodedRaceAndEthnicity]|component[SecondOtherAsianCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 313 | Father's Race Tabulation Variable 1E | FRACE1E| [CodedRaceAndEthnicity]|component[FirstEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 291 | Father's Race--Black or African American | FRACE2| [InputRaceAndEthnicity]|component[ BlackOrAfricanAmerican].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 309 | Father's Race--First Other Pacific Islander Literal | FRACE20| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral1].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 325 | Father's Race Tabulation Variable 20C | FRACE20C| [CodedRaceAndEthnicity]|component[FirstOtherPacificIslanderCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 310 | Father's Race--Second Other Pacific Islander Literal | FRACE21| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral2].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 326 | Father's Race Tabulation Variable 21C | FRACE21C| [CodedRaceAndEthnicity]|component[SecondOtherPacificIslanderCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 311 | Father's Race--First Other Literal | FRACE22| [InputRaceAndEthnicity]|component[ OtherRaceLiteral1].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 327 | Father's Race Tabulation Variable 22C | FRACE22C| [CodedRaceAndEthnicity]|component[FirstOtherRaceCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 312 | Father's Race--Second Other Literal | FRACE23| [InputRaceAndEthnicity]|component[ OtherRaceLiteral2].valueString, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | 
| 328 | Father's Race Tabulation Variable 23C | FRACE23C| [CodedRaceAndEthnicity]|component[SecondOtherRaceCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 314 | Father's Race Tabulation Variable 2E | FRACE2E| [CodedRaceAndEthnicity]|component[SecondEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 292 | Father's Race--American Indian or Alaska Native | FRACE3| [InputRaceAndEthnicity]|component[ AmericanIndianOrAlaskanNative].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 315 | Father's Race Tabulation Variable 3E | FRACE3E| [CodedRaceAndEthnicity]|component[ThirdEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 293 | Father's Race--Asian Indian | FRACE4| [InputRaceAndEthnicity]|component[ AsianIndian].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 316 | Father's Race Tabulation Variable 4E | FRACE4E| [CodedRaceAndEthnicity]|component[FourthEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 294 | Father's Race--Chinese | FRACE5| [InputRaceAndEthnicity]|component[ Chinese].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 317 | Father's Race Tabulation Variable 5E | FRACE5E| [CodedRaceAndEthnicity]|component[FifthEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 295 | Father's Race--Filipino | FRACE6| [InputRaceAndEthnicity]|component[ Filipino].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 318 | Father's Race Tabulation Variable 6E | FRACE6E| [CodedRaceAndEthnicity]|component[SixthEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 296 | Father's Race--Japanese | FRACE7| [InputRaceAndEthnicity]|component[ Japanese].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 319 | Father's Race Tabulation Variable 7E | FRACE7E| [CodedRaceAndEthnicity]|component[SeventhEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 297 | Father's Race--Korean | FRACE8| [InputRaceAndEthnicity]|component[ Korean].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 320 | Father's Race Tabulation Variable 8E | FRACE8E| [CodedRaceAndEthnicity]|component[EighthEditedCode].value, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | 
| 298 | Father's Race--Vietnamese | FRACE9| [InputRaceAndEthnicity]|component[ Vietnamese].valueBoolean, subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | 
| 334 | Father's Bridged Race - NCHS Code | FRACEBG_C| [Observation-race-vr]| |  | Need to discuss - what is bridged race code for? Is this deprecated? | 
| 7 | Sex | FSEX| [PatientDecedentFetusVitalRecords]|extension[us-core-birthsex].value | codeable | [http://hl7.org/fhir/us/core/ValueSet/birthsex] | 
| 144 | Weight of Fetus--Edit Flag | FW_BYPASS| [ObservationEditFlagBirthweight]|value | codeable | [PHVS_BirthWeightEditFlags_NCHS], See [Handling of edit flags] | 
| 143 | Weight of Fetus | FWG| [ObservationBirthWeightVitalRecords]|value | quantity |  | 
| 161 | Congenital Anomalies of the Fetus--Gastroschisis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | GAST| [not implemented]| |  |  | 
| 126 | Infections Present--Group B streptococcus(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | GBS| [not implemented]| |  |  | 
| 111 | Risk Factors--Gestational Diabetes | GDIAB| [ConditionGestationalDiabetesVitalRecords]| | na | See [Note on missing data] | 
| 113 | Risk Factors--Hypertension Gestational  (SEE ADDITIONAL HYPERTENSION CATEGORY IN LOCATION 573 TO REFLECT RECOMMENDED CHANGES EFFECTIVE 2004) | GHYPE| [ConditionGestationalHypertensionVitalRecords]| | na | See [Note on missing data] | 
| 121 | Infections Present--Gonorrhea(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | GON| [not implemented]| |  |  | 
| 88 | Mother's Height--Feet | HFT| [ObservationMotherHeightVitalRecords]|value | quantity |  | 
| 90 | Mother's Height--Edit Flag | HGT_BYPASS| [ObservationEditFlagMothersHeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags]  | 
| 89 | Mother's Height--Inches | HIN| [ObservationMotherHeightVitalRecords]|value | quantity |  | 
| 149 | Was a Histological Placental Examination Performed? | HISTOP| [ObservationHistologicalPlacentalExamPerformed]|value | codeable | [ValueSetHistologicalPlacentalExamination] | 
| 217 | Infections Present--HIV | HIV| [not implemented]| |  |  | 
| 224 | Name of Delivery Facility | HOSP_D| [Encounter_Maternity]|location.location.name | string |  | 
| 339 | Facility Mother Moved From (if transferred) | HOSPFROM| [Encounter_Maternity]|hospitalization.origin.name | string |  | 
| 123 | Infections Present--Herpes Simplex (HSV)  (RECOMMENDED DELETION EFFECTIVE 2004) (NCHS DELETED THIS ITEM EFFECTIVE 2011) | HSV| [not implemented]| |  |  | 
| 216 | Infections Present--Genital Herpes (Subcategory in position 504) | HSV1| [not implemented]| |  |  | 
| 167 | Congenital Anomalies of the Fetus--Hypospadias(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | HYPO| [not implemented]| |  |  | 
| 136 | Method of Delivery--Hysterotomy/Hysterectomy(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | HYST| [not implemented]| |  |  | 
| 208 | Coded initiating cause/condition | ICOD| [ConditionCodedInitiatingFetalDeathCauseOrCondition]|code | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 343 | Informant's First Name | INFORMFST| [not implemented]| |  |  | 
| 345 | Informant's Last Name | INFORMLST| [not implemented]| |  |  | 
| 344 | Informant's Middle Name | INFORMMID| [not implemented]| |  |  | 
| 346 | Informant's Relationship to Fetus | INFORMRELATE| [not implemented]| |  |  | 
| 117 | Risk Factors--Infertility Treatment  (SEE ADDITIONAL SUBCATEGORIES IN LOCATIONS 574-575) | INFT| [ProcedureInfertilityTreatmentVitalRecords]| | na | See [Note on missing data] | 
| 175 | Risk Factors--Infertility: Asst. Rep. Technology (added after 2004) | INFT_ART| [ProcedureAssistedFertilizationVitalRecords]| | na | See [Note on missing data] | 
| 174 | Risk Factors--Infertility: Fertility Enhancing Drugs (added after 2004) | INFT_DRG| [ProcedureArtificialInseminationVitalRecords]| | na | See [Note on missing data] | 
| 260 | Mother's Residence Latitude | LAT| [not implemented]| |  |  | 
| 238 | Place of Delivery Latitude | LAT_D| [not implemented]| |  |  | 
| 162 | Congenital Anomalies of the Fetus--Limb Reduction Defect(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | LIMB| [not implemented]| |  |  | 
| 24 | Residence of Mother--Inside City/Town Limits | LIMITS| [PatientMotherVitalRecords]|address.extension[ withinCityLimitsIndicator ].value | codeable | [PHVS_YesNoUnknown_CDC] | 
| 125 | Infections Present--Listeria(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | LM| [not implemented]| |  |  | 
| 259 | Mother's Residence Longitude | LONG| [not implemented]| |  |  | 
| 237 | Place of Delivery Longitude | LONG_D| [not implemented]| |  |  | 
| 17 | Date of Birth (Mother)--Edit Flag | MAGE_BYPASS| [ObservationEditFlagMothersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], See [Handling of edit flags] | 
| 267 | Mother's Age (Calculated) | MAGE_CALC| [not implemented]| |  |  | 
| 171 | Mother's Reported Age | MAGER| [PatientChildVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=Reference[ PatientMotherVitalRecords ] | quantity |  | 
| 29 | Mother Married?--Ever(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MARE| [not implemented]| |  |  | 
| 30 | Mother Married?-- At Conception, at Delivery or any Time in Between(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MARN| [not implemented]| |  |  | 
| 154 | Matching Number | MATCH| [not implemented]| |  |  | 
| 280 | Mother's Country of Birth (Literal) | MBPLACE_CNTRY_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 279 | State, U.S. Territory or Canadian Province of Birth (Mother) - literal | MBPLACE_ST_TER_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | See [StateLiterals] | 
| 16 | Date of Birth (Mother)--Day | MDOB_DY| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 15 | Date of Birth (Mother)--Month | MDOB_MO| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 14 | Date of Birth (Mother)--Year | MDOB_YR| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | 
| 32 | Mother's Education | MEDUC| [ObservationParentEducationLevelVitalRecords]|value, focus[ PatientMotherVitalRecords ] | codeable | [EducationLevelVS] | 
| 33 | Mother's Education--Edit Flag | MEDUC_BYPASS| [ObservationEditFlagMothersEducation]|value | codeable | [PHVS_EditFlags_NCHS], why does this not use same edit flag as father's education [PHVS_EducationLevelEditFlags_NCHS]?  See [Handling of edit flags] | 
| 335 | Mother's Hispanic Origin - Specify | METHNIC_T| [Observation-tabulated-ethnicity-vr]| |  | Need to discuss, similar to FETHNIC_T | 
| 34 | Mother of Hispanic Origin?--Mexican | METHNIC1| [InputRaceAndEthnicity]|component[ HispanicMexican].valueCoding, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 35 | Mother of Hispanic Origin?--Puerto Rican | METHNIC2| [InputRaceAndEthnicity]|component[ HispanicPuertoRican].valueCoding, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 36 | Mother of Hispanic Origin?--Cuban | METHNIC3| [InputRaceAndEthnicity]|component[ HispanicCuban ].valueCoding, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 37 | Mother of Hispanic Origin?--Other | METHNIC4| [InputRaceAndEthnicity]|component[ HispanicOther ].valueCoding, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicNoUnknownVS] | 
| 38 | Mother of Hispanic Origin?--Other Literal | METHNIC5| [InputRaceAndEthnicity]|component[ HispanicLiteral ].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 329 | Mother's Hispanic Code for Literal | METHNIC5C| [CodedRaceAndEthnicity]|component[HispanicCodeForLiteral].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | 
| 330 | Mother's Edited Hispanic Origin Code | METHNICE| [CodedRaceAndEthnicity]|component[HispanicCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | 
| 99 | Date of Last Live Birth--Month | MLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 157 | Congenital Anomalies of the Fetus--Meningomyelocele/Spina Bifida(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MNSB| [not implemented]| |  |  | 
| 274 | Industry of Mother (coded) | MOM_IN_C| [not implemented]| |  |  | 
| 273 | Industry of Mother | MOM_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | 
| 270 | Occupation of Mother (coded) | MOM_OC_C| [not implemented]| |  |  | 
| 269 | Occupation of Mother | MOM_OC_T| [odh-UsualWork]|value.text | string(40) |  | 
| 265 | Mother's Social Security Number | MOM_SSN| [PatientMotherVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code=”SS”  | string |  | 
| 243 | Mother's First Maiden Name | MOMFMNME| [PatientMotherVitalRecords]|name.given, name.use = maiden | string |  | 
| 239 | Mother's Legal First Name | MOMFNAME| [PatientMotherVitalRecords]|name.given, name.use = official | string |  | 
| 241 | Mother's Legal Last Name | MOMLNAME| [PatientMotherVitalRecords]|name.family, name.use = official | string |  | 
| 245 | Mother's Last Maiden Name | MOMMAIDN| [PatientMotherVitalRecords]|name.family, name.use = maiden | string |  | 
| 244 | Mother's Middle Maiden Name | MOMMMID| [PatientMotherVitalRecords]|name.given, name.use = maiden | string |  | 
| 240 | Mother's Legal Middle Name | MOMMNAME| [PatientMotherVitalRecords]|name.given, name.use = official  | string |  | 
| 246 | Mother's Maiden Surname Suffix | MOMMSUFFIX| [PatientMotherVitalRecords]|name.suffix, name.use = maiden | string |  | 
| 242 | Mother's Legal Surname Suffix | MOMSUFFIX| [PatientMotherVitalRecords]|name.suffix, name.use = official  | string |  | 
| 101 | Date of Last Other Pregnancy Outcome--Month(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MOPO| [not implemented]| |  |  | 
| 336 | Mother's Race - Specify | MRACE_T| [Observation-race-vr]| |  | Need to discuss, similar to FRACE_T | 
| 39 | Mother's Race--White | MRACE1| [InputRaceAndEthnicity]|component[ White].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 48 | Mother's Race--Other Asian | MRACE10| [InputRaceAndEthnicity]|component[ OtherAsian].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 49 | Mother's Race--Native Hawaiian | MRACE11| [InputRaceAndEthnicity]|component[ NativeHawaiian].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 50 | Mother's Race--Guamanian or Chamorro | MRACE12| [InputRaceAndEthnicity]|component[ GuamanianOrChamorro].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 51 | Mother's Race--Samoan | MRACE13| [InputRaceAndEthnicity]|component[ Samoan].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 52 | Mother's Race--Other Pacific Islander | MRACE14| [InputRaceAndEthnicity]|component[ OtherPacificIslander].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 53 | Mother's Race--Other | MRACE15| [InputRaceAndEthnicity]|component[ OtherRace].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 54 | Mother's Race--First American Indian or Alaska Native Literal | MRACE16| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 70 | Mother's Race Tabulation Variable 16C | MRACE16C| [CodedRaceAndEthnicity]|component[FirstAmericanIndianCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 55 | Mother's Race--Second American Indian or Alaska Native Literal | MRACE17| [InputRaceAndEthnicity]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 71 | Mother's Race Tabulation Variable 17C | MRACE17C| [CodedRaceAndEthnicity]|component[SecondAmericanIndianCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 56 | Mother's Race--First Other Asian Literal | MRACE18| [InputRaceAndEthnicity]|component[ OtherAsianLiteral1].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 72 | Mother's Race Tabulation Variable 18C | MRACE18C| [CodedRaceAndEthnicity]|component[FirstOtherAsianCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 57 | Mother's Race--Second Other Asian Literal | MRACE19| [InputRaceAndEthnicity]|component[ OtherAsianLiteral2].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 73 | Mother's Race Tabulation Variable 19C | MRACE19C| [CodedRaceAndEthnicity]|component[SecondOtherAsianCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 62 | Mother's Race Tabulation Variable 1E | MRACE1E| [CodedRaceAndEthnicity]|component[FirstEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable |  | 
| 40 | Mother's Race--Black or African American | MRACE2| [InputRaceAndEthnicity]|component[ BlackOrAfricanAmerican].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 58 | Mother's Race--First Other Pacific Islander Literal | MRACE20| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral1].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 74 | Mother's Race Tabulation Variable 20C | MRACE20C| [CodedRaceAndEthnicity]|component[FirstOtherPacificIslanderCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 59 | Mother's Race--Second Other Pacific Islander Literal | MRACE21| [InputRaceAndEthnicity]|component[ OtherPacificIslandLiteral2].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 75 | Mother's Race Tabulation Variable 21C | MRACE21C| [CodedRaceAndEthnicity]|component[SecondOtherPacificIslanderCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 60 | Mother's Race--First Other Literal | MRACE22| [InputRaceAndEthnicity]|component[ OtherRaceLiteral1].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 76 | Mother's Race Tabulation Variable 22C | MRACE22C| [CodedRaceAndEthnicity]|component[FirstOtherRaceCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 61 | Mother's Race--Second Other Literal | MRACE23| [InputRaceAndEthnicity]|component[ OtherRaceLiteral2].valueString, subject=Reference[ PatientMotherVitalRecords ] | string |  | 
| 77 | Mother's Race Tabulation Variable 23C | MRACE23C| [CodedRaceAndEthnicity]|component[SecondOtherRaceCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 63 | Mother's Race Tabulation Variable 2E | MRACE2E| [CodedRaceAndEthnicity]|component[SecondEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 41 | Mother's Race--American Indian or Alaska Native | MRACE3| [InputRaceAndEthnicity]|component[ AmericanIndianOrAlaskanNative].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 64 | Mother's Race Tabulation Variable 3E | MRACE3E| [CodedRaceAndEthnicity]|component[ThirdEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 42 | Mother's Race--Asian Indian | MRACE4| [InputRaceAndEthnicity]|component[ AsianIndian].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 65 | Mother's Race Tabulation Variable 4E | MRACE4E| [CodedRaceAndEthnicity]|component[FourthEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 43 | Mother's Race--Chinese | MRACE5| [InputRaceAndEthnicity]|component[ Chinese].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 66 | Mother's Race Tabulation Variable 5E | MRACE5E| [CodedRaceAndEthnicity]|component[FifthEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 44 | Mother's Race--Filipino | MRACE6| [InputRaceAndEthnicity]|component[ Filipino].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 67 | Mother's Race Tabulation Variable 6E | MRACE6E| [CodedRaceAndEthnicity]|component[SixthEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 45 | Mother's Race--Japanese | MRACE7| [InputRaceAndEthnicity]|component[ Japanese].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 68 | Mother's Race Tabulation Variable 7E | MRACE7E| [CodedRaceAndEthnicity]|component[SeventhEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 46 | Mother's Race--Korean | MRACE8| [InputRaceAndEthnicity]|component[ Korean].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 69 | Mother's Race Tabulation Variable 8E | MRACE8E| [CodedRaceAndEthnicity]|component[EighthEditedCode].value, subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | 
| 47 | Mother's Race--Vietnamese | MRACE9| [InputRaceAndEthnicity]|component[ Vietnamese].valueBoolean, subject=Reference[ PatientMotherVitalRecords ] | boolean |  | 
| 331 | Mother's Bridged Race - NCHS Code | MRACEBG_C| [Observation-race-vr]| |  | Need to discuss - what is bridged race code for? Is this deprecated? | 
| 137 | Maternal Morbidity--Maternal Transfusion(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MTR| [not implemented]| |  |  | 
| 119 | Risk Factors--Number Previous Cesareans | NPCES| [ObservationNumberPreviousCesareansVitalRecords]|value | integer |  | 
| 120 | Risk Factors--Number Previous Cesareans--Edit Flag | NPCES_BYPASS| [ObservationEditFlagNumberPreviousCesareans]|value | codeable | [PHVS_NumberOfPreviousCesareansEditFlags_NCHS], See [Handling of edit flags]  | 
| 86 | Total Number of Prenatal Care Visits(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | NPREV| [not implemented]| |  |  | 
| 87 | Total Number of Prenatal Care Visits--Edit Flag(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | NPREV_BYPASS| [not implemented]| |  |  | 
| 209 | Coded other significant causes or conditions- first mentioned | OCOD1| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 210 | Coded other significant causes or conditions- second mentioned | OCOD2| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 211 | Coded other significant causes or conditions- third mentioned | OCOD3| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 212 | Coded other significant causes or conditions- fourth mentioned | OCOD4| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 213 | Coded other significant causes or conditions- fifth mentioned | OCOD5| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 214 | Coded other significant causes or conditions- sixth mentioned | OCOD6| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 215 | Coded other significant causes or conditions- seventh mentioned | OCOD7| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 160 | Congenital Anomalies of the Fetus--Omphalocele(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | OMPH| [not implemented]| |  |  | 
| 130 | Infections Present--Other(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | OTHERI| [not implemented]| |  |  | 
| 145 | Obstetric Estimation of Gestation | OWGEST| [ObservationGestationalAgeAtDeliveryVitalRecords]|value | quantity |  | 
| 146 | Obstetric Estimation of Gestation--Edit Flag | OWGEST_BYPASS| [ObservationEditFlagEstimateOfGestation]|value | codeable | [http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7567], See [Handling of edit flags]  | 
| 118 | Risk Factors--Previous Cesarean | PCES| [ObservationPreviousCesareanVitalRecords]| | na | See [Note on missing data] | 
| 110 | Risk Factors--Prepregnancy Diabetes  (NOTE: SEE INSERTED NOTES FOR RISK FACTOR LOCATIONS 490-501 AND 573-575 TO REFLECT 2004 CHANGES) | PDIAB| [ConditionPrepregnancyDiabetesVitalRecords]| | na | See [Note on missing data] | 
| 112 | Risk Factors--Hypertension Prepregnancy | PHYPE| [ConditionPrepregnancyHypertensionVitalRecords]| | na | See [Note on missing data] | 
| 138 | Maternal Morbidity--Perineal Laceration(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PLAC| [not implemented]| |  |  | 
| 354 | Blank for One-Byte Field 1 | PLACE1_1| [EmergingIssues]|component[EmergingIssue1_1].value | string(1) | formerly not implemented, used VRDR as example | 
| 355 | Blank for One-Byte Field 2 | PLACE1_2| [EmergingIssues]|component[EmergingIssue1_2].value | string(1) | formerly not implemented, used VRDR as example | 
| 356 | Blank for One-Byte Field 3 | PLACE1_3| [EmergingIssues]|component[EmergingIssue1_3].value | string(1) | formerly not implemented, used VRDR as example | 
| 357 | Blank for One-Byte Field 4 | PLACE1_4| [EmergingIssues]|component[EmergingIssue1_4].value | string(1) | formerly not implemented, used VRDR as example | 
| 358 | Blank for One-Byte Field 5 | PLACE1_5| [EmergingIssues]|component[EmergingIssue1_5].value | string(1) | formerly not implemented, used VRDR as example | 
| 359 | Blank for One-Byte Field 6 | PLACE1_6| [EmergingIssues]|component[EmergingIssue1_6].value | string(1) | formerly not implemented, used VRDR as example | 
| 363 | Blank for Twenty-Byte Field | PLACE20| [EmergingIssues]|component[EmergingIssue20].value | string(20) | formerly not implemented, used VRDR as example | 
| 360 | Blank for Eight-Byte Field 1 | PLACE8_1| [EmergingIssues]|component[EmergingIssue8_1].value | string(8) | formerly not implemented, used VRDR as example | 
| 361 | Blank for Eight-Byte Field 2 | PLACE8_2| [EmergingIssues]|component[EmergingIssue8_2].value | string(8) | formerly not implemented, used VRDR as example | 
| 362 | Blank for Eight-Byte Field 3 | PLACE8_3| [EmergingIssues]|component[EmergingIssue8_3].value | string(8) | formerly not implemented, used VRDR as example | 
| 97 | Previous Live Births Now Dead | PLBD| [ObservationNumberBirthsNowDeadVitalRecords]|value | integer |  | 
| 96 | Previous Live Births Now Living | PLBL| [ObservationNumberBirthsNowLivingVitalRecords]|value | integer |  | 
| 151 | Plurality | PLUR| [PatientChildVitalRecords]|extension[patient-multipleBirthTotal].valuePositiveInt | integer |  | 
| 155 | Plurality--Edit Flag | PLUR_BYPASS| [ObservationEditFlagPlurality]|value | codeable | [PHVS_PluralityEditFlags_NCHS], See [Handling of edit flags] | 
| 98 | Previous Other Pregnancy Outcomes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | POPO| [not implemented]| |  |  | 
| 251 | Mother's Residence Post Directional | POSTDIR| [PatientMotherVitalRecords]|address.extension[postdir] | string |  | 
| 229 | Place of Delivery Post Directional | POSTDIR_D| [Encounter_Maternity]|location.location.address.extension[postdir] | string |  | 
| 114 | Risk Factors--Previous Preterm Births(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PPB| [not implemented]| |  |  | 
| 115 | Risk Factors--Poor Pregnancy Outcomes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PPO| [not implemented]| |  |  | 
| 248 | Mother's Residence Pre Directional | PREDIR| [PatientMotherVitalRecords]|address.extension[predir] | string |  | 
| 226 | Place of Delivery Pre Directional | PREDIR_D| [Encounter_Maternity]|location.location.address.extension[predir] | string |  | 
| 133 | Method of Delivery--Fetal Presentation | PRES| [ObservationFetalPresentation]|value | codeable | [ValueSetFetalPresentations] | 
| 91 | Mother's Prepregnancy Weight | PWGT| [ObservationMotherPrepregnancyWeightVitalRecords]|value | quantity |  | 
| 92 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS| [ObservationEditFlagMothersPrepregnancyWeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags] | 
| 170 | NCHS USE ONLY: Receipt date -- Day | R_DY| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 169 | NCHS USE ONLY: Receipt date -- Month | R_MO| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 168 | NCHS USE ONLY: Receipt date -- Year | R_YR| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | 
| 352 | Date Filed by Registrar--Day | REGISTER_DY| [not implemented]| |  |  | 
| 351 | Date Filed by Registrar--Month | REGISTER_MO| [not implemented]| |  |  | 
| 350 | Date Filed by Registrar--Year | REGISTER_YR| [not implemented]| |  |  | 
| 353 | Replacement (amended) Record | REPLACE| [not implemented]| |  |  | 
| 134 | Method of Delivery--Route and Method of Delivery | ROUT| [ProcedureFinalRouteMethodDelivery]|code | codeable | [ValueSetDeliveryRoutes] | 
| 139 | Maternal Morbidity--Ruptured Uterus | RUT| [ConditionRupturedUterus]| | na | See [Note on missing data] | 
| 13 | Facility ID (State-Assigned) | SFN| [Encounter_Maternity]|location.location.identifier | Identifier |  | 
| 152 | Set Order | SORD| [PatientDecedentFetusVitalRecords]|multipleBirth[x] | integer |  | 
| 235 | State, U.S. Territory or Canadian Province of Place of Delivery - literal | STATE_D| [Encounter_Maternity]|location.location.address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 22 | State, U.S. Territory or Canadian Province of Residence (Mother) - code | STATEC| [PatientMotherVitalRecords]|address.state | string | [StatesTerritoriesAndProvincesVS] | 
| 257 | State, U.S. Territory or Canadian Province of Residence (Mother) - literal | STATETXT| [PatientMotherVitalRecords]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 250 | Mother's Residence Street designator | STDESIG| [PatientMotherVitalRecords]|address.extension[stdesig] | string |  | 
| 228 | Place of Delivery Street designator | STDESIG_D| [Encounter_Maternity]|location.location.address.extension[stdesig] | string |  | 
| 249 | Mother's Residence Street name | STNAME| [PatientMotherVitalRecords]|address.extension[stname] | string |  | 
| 227 | Place of Delivery Street name | STNAME_D| [Encounter_Maternity]|location.location.address.extension[stname] | string |  | 
| 247 | Mother's Residence Street number | STNUM| [PatientMotherVitalRecords]|address.extension[stnum] | string |  | 
| 225 | Place of Delivery Street number | STNUM_D| [Encounter_Maternity]|location.location.address.extension[stnum] | string |  | 
| 222 | Fetus Surname Suffix | SUFFIX| [PatientDecedentFetusVitalRecords]|name.suffix , name.use = official | string |  | 
| 122 | Infections Present--Syphilis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | SYPH| [not implemented]| |  |  | 
| 6 | Time of Delivery | TD| [PatientDecedentFetusVitalRecords]|birthDate.extension[patient-birthTime] |  | See [PartialDatesAndTimes] | 
| 135 | Method of Delivery--Trial of Labor Attempted | TLAB| [ObservationLaborTrialAttempted]|value | boolean | Discussion needed: IJE values are Y, N, U, and X (not applicable). However, encoding with Boolean does not capture Unknown or Not Applicable | 
| 129 | Infections Present--Toxoplasmosis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | TOXO| [not implemented]| |  |  | 
| 79 | Mother Transferred?(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | TRAN| [not implemented]|Encounter-maternity.hospitalization.admitSource (Y if present, N if not present) |  |  | 
| 140 | Maternal Morbidity--Unplanned Hysterectomy(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | UHYS| [not implemented]| |  |  | 
| 142 | Maternal Morbidity--Unplanned Operation(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | UOPR| [not implemented]| |  |  | 
| 116 | Risk Factors--Vaginal Bleeding  (RECOMMENDED DELETION EFFECTIVE 2004)  (NCHS DELETED THIS ITEM EFFECTIVE 2011) | VB| [not implemented]| |  |  | 
| 4 | Void flag | VOID| [not implemented]| |  |  | 
| 95 | Did Mother get WIC Food for Herself? | WIC| [ObservationMotherReceivedWICFood]|value | codeable | [PHVS_YesNoUnknown_CDC] | 
| 100 | Date of Last Live Birth--Year | YLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 102 | Date of Last Other Pregnancy Outcome--Year(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | YOPO| [not implemented]| |  |  | 
| 254 | Mother's Residence Zip code and Zip+4 | ZIPCODE| [PatientMotherVitalRecords]|address.postalCode | string |  | 
| 232 | Place of Delivery Zip code and Zip+4 | ZIPCODE_D| [Encounter_Maternity]|location.location.address.postalCode | string |  | 
{: .grid }
{% include markdown-link-references.md %}