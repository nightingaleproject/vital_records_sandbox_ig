# Provider Live Birth

| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
|Patient-Child |   subject  |    adding edit flag extension to patient VR   |   [PatientChildVitalRecords] |     [PatientChildVitalRecordsNew]     |   staying in VRCL with updates   |
|Encounter-Birth |   encounter  |    -    | [EncounterBirth] |     -         |   -      |
|Encounter-Maternity (ext) |   encounter  |    -    | [Encounter_Maternity] |     -         |   -      |
|Practitioner |   author  |  generalized profile that adds a further constraint to capture the title of the practitioner  | [PractitionerVitalRecords] | [PractitionerVitalRecordsNew] | - |
|Patient-Mother |   focus  |    adding edit flag extension to patient VR    | [PatientMotherVitalRecords] |     [PatientMotherVitalRecordsNew]        |   staying in VRCL with updates   |
|Planned to Deliver at Home |   motherPrenatal  |    -    | [ObservationPlannedToDeliverAtHome] |     -         |   -      |
|First Prenatal Care Visit |   motherPrenatal  |    -    | [ObservationDateOfFirstPrenatalCareVisit] |       -       |    -     |
|Number Prenatal Care Visits|     motherPrenatal     |    adding edit flag extension    | [ObservationNumberPrenatalVisitsVitalRecords] |   [ObservationNumberPrenatalVisitsNew]    |    moving from VRCL to BFDR    |
|Date Last Normal Menses |     motherPrenatal     |    -    | [ObservationLastMenstrualPeriodVitalRecords] |     [ObservationLastMenstrualPeriodNew]     |    moving from VRCL to BFDR    |
|Number Now Living |     motherPrenatal     |    -    | [ObservationNumberBirthsNowLivingVitalRecords] |    [ObservationNumberBirthsNowLivingNew]    |    moving from VRCL to BFDR    |
|Number Now Dead |     motherPrenatal     |    -    | [ObservationNumberBirthsNowDeadVitalRecords] |     [ObservationNumberBirthsNowDeadNew]     |    moving from VRCL to BFDR    |
|Number Other Outcomes |     motherPrenatal     |    -    | [ObservationNumberOtherPregnancyOutcomesVitalRecords] | [ObservationNumberOtherPregnancyOutcomesNew]     |    moving from VRCL to BFDR    |
|Date Last Other Outcome |     motherPrenatal     |    -    | [ObservationDateOfLastOtherPregnancyOutcome] |       -       |    -     |
|Principal Source of Payment |    motherPrenatal     |    -    | [CoveragePrincipalPayerDelivery] |       -       |    -     |
|Mother's Weight at Delivery |     motherPrenatal    |    adding edit flag extension   | [ObservationMotherDeliveryWeightVitalRecords] |    [ObservationMotherDeliveryWeightNew]     |    moving from VRCL to BFDR    |
|Mother's Height |     motherPrenatal    |    adding edit flag extension   | [ObservationMotherHeightVitalRecords] | [ObservationMotherHeightNew] |    moving from VRCL to BFDR    |
|Mother's Prepregancy Weight|     motherPrenatal     |    adding edit flag extension    | [ObservationMotherPrepregnancyWeightVitalRecords] |   [ObservationMotherPrepregnancyWeightNew]    |    moving from VRCL to BFDR    |
|Mother Received WIC Food|     motherPrenatal     |    -    | [ObservationMotherReceivedWICFood] |       -       |    -     |
|Cigarette Smoking Before During Pregnancy|     motherPrenatal     |    -    | [ObservationCigaretteSmokingBeforeDuringPregnancy] |       -       |    -     |
|Prepregnancy Diabetes |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionPrepregnancyDiabetesNew]   |    Risk factors broken up into individual profiles    |
|Gestational Diabetes |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionGestationalDiabetesNew]   |    Risk factors broken up into individual profiles    |
|Prepregnancy Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionPrepregnancyHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Gestational Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionGestationalHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Eclampsia Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionEclampsiaHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Previous Preterm Birth |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPreviousPretermBirthNew]   |    Risk factors broken up into individual profiles    |
|Infertility Treatment |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureInfertilityTreatmentNew]   |    Risk factors broken up into individual profiles    |
|Artificial Insemination |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureArtificialInseminationNew]   |    Risk factors broken up into individual profiles    |
|Assisted Fertilization |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureAssistedFertilizationNew]   |    Risk factors broken up into individual profiles    |
|Previous Cesarean |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPreviousCesareanNew]   |    Risk factors broken up into individual profiles    |
|None Of Specified Pregnancy Risk Factors |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationNoneOfSpecifiedPregnancyRiskFactorsNew]   |    Risk factors broken up into individual profiles    |
|Number Previous Cesareans |     medicalHealthInformation     |    adding edit flag extension    | [ObservationNumberPreviousCesareansVitalRecords] |  [ObservationNumberPreviousCesareansNew]   |    moving from VRCL to BFDR    |
|Infections During Pregnancy |     medicalHealthInformation   |    -    | [ConditionInfectionPresentDuringPregnancy] |       -       |    -     |
|Obstetric Procedures |     medicalHealthInformation    |    -    | [ProcedureObstetric] |       -       |    -     |
|Induction of Labor |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ProcedureInductionOfLabor] |       -       |    -     |
|Augmentation of Labor |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ProcedureAugmentationOfLabor] |       -       |    -     |
|Steroids Fetal Lung Maturation |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ObservationSteroidsFetalLungMaturation] |       -       |    -     |
|Antibiotics Administered During Labor |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ObservationAntibioticsAdministeredDuringLabor] |     -       |    -     |
|Chorioamnionitis |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ConditionChorioamnionitis]  |       -       |    -     |
|Epidural or Spinal Anesthesia |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ProcedureEpiduralOrSpinalAnesthesia]  |       -       |    -     |
|None of Specified Characteristics of Labor and Delivery |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ObservationNoneOfSpecifiedCharacteristicsOfLaborAndDelivery]  |       -       |    -     |
|Fetal Presentations |     medicalHealthInformation   |    -    | [ObservationFetalPresentation] |       -       |    -     |
|Final Route Method Delivery|     medicalHealthInformation   |    -    | [ProcedureFinalRouteMethodDelivery] |       -       |    -     |
|Blood Transfusion |     medicalHealthInformation/Maternal Morbidity    |    -    | [ProcedureBloodTransfusion] |       -       |    -     |
|Perineal Laceration |     medicalHealthInformation/Maternal Morbidity    |    -    | [ConditionPerinealLaceration] |       -       |    -     |
|Ruptured Uterus  |     medicalHealthInformation/Maternal Morbidity    |    -    | [ConditionRupturedUterus] |       -       |    -     |
|Unplanned Hysterectomy |     medicalHealthInformation/Maternal Morbidity    |    -    | [ProcedureUnplannedHysterectomy] |       -       |    -     |
|ICU Admission |     medicalHealthInformation/Maternal Morbidity    |    -    | [ObservationICUAdmission] |       -       |    -     |
|None of Specified Maternal Morbidities |     medicalHealthInformation/Maternal Morbidity    |    -    | [ObservationNoneOfSpecifiedMaternalMorbidities] |       -       |    -     |
|Birth Weight |     newbornInformation   |    adding edit flag extension     | [ObservationBirthWeightVitalRecords] |    [ObservationBirthWeightNew]    |    moving from VRCL to BFDR    |
|Gestational Age at Delivery |     newbornInformation    |    adding edit flag extension    | [ObservationGestationalAgeAtDeliveryVitalRecords] |  [ObservationGestationalAgeAtDeliveryNew]   |    moving from VRCL to BFDR    |
|Apgar Score |     newbornInformation    |    -    | [ObservationApgarScoreVitalRecords] | [ObservationApgarScoreNew]  |    moving from VRCL to BFDR    |
|Number Live Births This Delivery |     newbornInformation   |    -    | [ObservationNumberLiveBirthsThisDeliveryVitalRecords] |   [ObservationNumberLiveBirthsThisDeliveryNew]   |    moving from VRCL to BFDR    |
|Assisted Ventilation Following Delivery |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ProcedureassistedVentilationFollowingDelivery]  |       -       |    -     |
|Assisted Ventilation More than Six Hours  |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ProcedureassistedVentilationMoreThanSixHours]   |       -       |    -     |
|NICU Admission |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ObservationNICUAdmission]   |       -       |    -     |
|Surfactant Replacement Therapy |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ProcedureSurfactantReplacementTherapy]   |       -       |    -     |
|Antibiotic Suspected Neonatal Sepsis |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ProcedureAntibioticSuspectedNeonatalSepsis]   |       -       |    -     |
|Seizure|     newbornInformation/Abnormal Conditions Newborn  |    -    | [ConditionSeizure]   |       -       |    -     |
|None of Specified Abnormal Conditions of Newborn |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ObservationNoneOfSpecifiedAbnormalConditionsOfNewborn] |       -       |    -     |
|Congenital Anomalies Newborn |     newbornInformation    |    -    |    [ConditionCongenitalAnomalyOfNewborn]    |    -    |    -     |
|Infant Living |     newbornInformation    |    -    | [ObservationInfantLivingVitalRecords] |     [ObservationInfantLivingNew]    |    moving from VRCL to BFDR    |
|Infant Breastfed at Discharge|     newbornInformation    |    -    | [ObservationInfantBreastfedAtDischarge] |       -       |    -     |
|Married During Pregnancy |     motherInformation   |    -    | [ObservationMotherMarriedDuringPregnancy] |       -       |    -     |
|SSN Requested for Child |     motherInformation   |    -    | [ObservationSSNRequestedForChild] |       -       |    -     |
|Mothers Education|     motherInformation   |  added Decedent education level code, removed MS flags, adding edit flag extension  | [ObservationParentEducationLevelVitalRecords] | [ObservationEducationLevelVitalRecordsNew] |  - |
|Paternity Acknowledgement Signed |     fatherInformation   |    -    | [ObservationPaternityAcknowledgementSigned] |       -       |    -     |
|Fathers Education|     fatherInformation  |   added Decedent education level code, removed MS flags, adding edit flag extension   | [ObservationParentEducationLevelVitalRecords] | [ObservationEducationLevelVitalRecordsNew] |  - |
|Father Related Person|     fatherInformation  |   adding edit flag extension to related person profile  | [RelatedPersonFatherNaturalVitalRecords] | - |  - |
|Question Response|     patientsQuestionnaireResponse  |   -  | [QuestionnaireResponse] | - |  - |
{: .grid }
<!-- |Questionnaire-Mother's Worksheet for Child's Birth Certificate |     mothersQuestionnaireResponse   |    -    | [Questionnaire-mothers-live-birth] |       -       |    Not a profile    | -->

| Name of Extension  | change  |  Current Extension   | New Extension  | Comment |
| ------------------ | ------- | ------------------ | ------------ | ----- | 
|Live Birth Certificate Number  |    -    | [ExtensionLiveBirthCertificateNumber] |     -       |   -      |
|Live Birth Local File Number  |    -    | [ExtensionLiveBirthLocalFileNumber] |     -      |   -      |
|Date Filed by Registrar |    -    | [ExtensionDateFiledByRegistrar] |     -         |   -      |
|Replacement Status |    -    | [ReplaceStatus] |     -         |    The use of this extension has been deprecated and wil be ignored for NCHS submissions.  |
|Encounter Maternity Reference |    -    | [ExtensionEncounterMaternityReference] |     -         |   -  |
{: .grid }
<!-- |Partial Date  |    -    | [PartialDate] |    [ExtensionDatePartAbsentReasonVitalRecords]         |   -      |
|Partial Date Time  |    -    | [PartialDateTime] | [ExtensionPartialDateTimeVitalRecords]             |    -     | -->

# Provider Fetal Death

| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
|Patient-Decedent Fetus |   subject  |    adding edit flag extension to patient VR     | [PatientDecedentFetusVitalRecords] |  [PatientDecedentFetusVitalRecordsNew]   |   staying in VRCL with updates   |
|Encounter-Maternity |   encounter  |    -    | [Encounter_Maternity] |     -         |   -      |
|Practitioner |   author  |    generalized profile that adds a further constraint to capture the title of the practitioner    | [PractitionerVitalRecords] | [PractitionerVitalRecordsNew] |  -  |
|Patient-Mother |   focus  |    adding edit flag extension to related person profile    | [PatientMotherVitalRecords] |   [RelatedPersonMotherVitalRecordsNew]    |   staying in VRCL with updates    |
|Planned to Deliver at Home |   motherPrenatal  |    -    | [ObservationPlannedToDeliverAtHome] |     -         |   -      |
|First Prenatal Care Visit |   motherPrenatal  |    -    | [ObservationDateOfFirstPrenatalCareVisit] |       -       |    -     |
|Date Last Normal Menses |     motherPrenatal     |    -    | [ObservationLastMenstrualPeriodVitalRecords] |   [ObservationLastMenstrualPeriodNew]   |    moving from VRCL to BFDR    |
|Number Now Living |     motherPrenatal     |    -    | [ObservationNumberBirthsNowLivingVitalRecords] |   [ObservationNumberBirthsNowLivingNew]    |    moving from VRCL to BFDR    |
|Number Now Dead |     motherPrenatal     |    -    | [ObservationNumberBirthsNowDeadVitalRecords] |   [ObservationNumberBirthsNowDeadNew]   |    moving from VRCL to BFDR    |
|Date Last Live Birth |     motherPrenatal     |    -    | [ObservationDateOfLastLiveBirth] |       -       |    -     |
|Mother's Height |     motherPrenatal    |    adding edit flag extension    | [ObservationMotherHeightVitalRecords] |  [ObservationMotherHeightNew]   |    moving from VRCL to BFDR    |
|Mother's Prepregancy Weight|     motherPrenatal     |    adding edit flag extension    | [ObservationMotherPrepregnancyWeightVitalRecords] |   [ObservationMotherPrepregnancyWeightNew]    |    moving from VRCL to BFDR    |
|Mother Received WIC Food|     motherPrenatal     |    -    | [ObservationMotherReceivedWICFood] |       -       |    -     |
|Cigarette Smoking Before During Pregnancy|     motherPrenatal     |    -    | [ObservationCigaretteSmokingBeforeDuringPregnancy] |       -       |    -     |
|Prepregnancy Diabetes |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionPrepregnancyDiabetesNew]   |    Risk factors broken up into individual profiles    |
|Gestational Diabetes |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionGestationalDiabetesNew]   |    Risk factors broken up into individual profiles    |
|Prepregnancy Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionPrepregnancyHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Gestational Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionGestationalHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Eclampsia Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionEclampsiaHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Previous Preterm Birth |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPreviousPretermBirthNew]   |    Risk factors broken up into individual profiles    |
|Infertility Treatment |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureInfertilityTreatmentNew]   |    Risk factors broken up into individual profiles    |
|Artificial Insemination |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureArtificialInseminationNew]   |    Risk factors broken up into individual profiles    |
|Assisted Fertilization |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureAssistedFertilizationNew]   |    Risk factors broken up into individual profiles    |
|Previous Cesarean |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPreviousCesareanNew]   |    Risk factors broken up into individual profiles    |
|None Of Specified Pregnancy Risk Factors |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationNoneOfSpecifiedPregnancyRiskFactorsNew]   |    Risk factors broken up into individual profiles    |
|Number Previous Cesareans |     medicalHealthInformation     |    adding edit flag extension   | [ObservationNumberPreviousCesareansVitalRecords] |  [ObservationNumberPreviousCesareansNew]   |    moving from VRCL to BFDR    |
|Fetal Presentations |     medicalHealthInformation   |    -    | [ObservationFetalPresentation] |       -       |    -     |
|Final Route Method Delivery|     medicalHealthInformation   |    -    | [ProcedureFinalRouteMethodDelivery] |       -       |    -     |
|Blood Transfusion |     medicalHealthInformation/Maternal Morbidity   |    -    | [ProcedureBloodTransfusion] |       -       |    -     |
|Perineal Laceration |     medicalHealthInformation/Maternal Morbidity   |    -    | [ConditionPerinealLaceration] |       -       |    -     |
|Ruptured Uterus |     medicalHealthInformation/Maternal Morbidity   |    -    | [ConditionRupturedUterus] |       -       |    -     |
|Unplanned Hysterectomy |     medicalHealthInformation/Maternal Morbidity   |    -    | [ProcedureUnplannedHysterectomy] |       -       |    -     |
|ICU Admission|     medicalHealthInformation/Maternal Morbidity   |    -    | [ObservationICUAdmission] |       -       |    -     |
|None of Specified Maternal Morbidities|     medicalHealthInformation/Maternal Morbidity   |    -    | [ObservationNoneOfSpecifiedMaternalMorbidities] |       -       |    -     |
|Delivery Weight |     fetus   |    adding edit flag extension    | [ObservationBirthWeightVitalRecords] | [ObservationBirthWeightNew]   |    moving from VRCL to BFDR    |
|Gestational Age at Delivery |     fetus     |    adding edit flag extension   | [ObservationGestationalAgeAtDeliveryVitalRecords] |   [ObservationGestationalAgeAtDeliveryNew]   |    moving from VRCL to BFDR    |
|Cause of Fetal Death |     fetus     |    -    | [ConditionFetalDeathCauseOrCondition] |       -       |    -     |
|Other Cause of Death |     fetus    |    -    | [ConditionFetalDeathOtherCauseOrCondition] |       -       |    -     |
|Estimated Time Fetal Death |     fetus     |    -    | [ObservationFetalDeathTimePoint] |    -    |    -     |
|Autopsy Performed |     fetus     |    -    | [AutopsyPerformedIndicator] |    -    |    -     |
|Histological Exam Performed |     fetus     |    -    | [ObservationHistologicalPlacentalExamPerformed] |       -       |    -     |
|Autopsy or Histological Exam Used|     fetus     |    -    | [ObservationAutopsyHistologicalExamResultsUsed] |       -       |    -     |
|Number Live Births This Delivery |     fetus    |    -    | [ObservationNumberLiveBirthsThisDeliveryVitalRecords] |  [ObservationNumberLiveBirthsThisDeliveryNew]  |    moving from VRCL to BFDR    |
|Number Fetal Deaths This Delivery |     fetus    |    -    | [ObservationNumberFetalDeathsThisDeliveryVitalRecords] |  [ObservationNumberFetalDeathsThisDeliveryNew]   |    moving from VRCL to BFDR    |
|Mothers Education|     motherInformation   |    added Decedent education level code, removed MS flags, adding edit flag extension   | [ObservationParentEducationLevelVitalRecords] | [ObservationEducationLevelVitalRecordsNew] |  -  |
|Father Related Person|     fatherInformation  |   adding edit flag extension to related person profile  | [RelatedPersonFatherNaturalVitalRecords] | - |  - |
|Question Response|     patientsQuestionnaireResponse  |   -  | [QuestionnaireResponse] | - |  - |
{: .grid }
<!-- | Mother's Race and Ethnicity| motherInfo |    -    |  <not included> | [InputRaceAndEthnicityNew] | moving from VRDR to VRCL | -->
<!-- |Patients Questionnaire Response |     patientsQuestionnaireResponse   |    -    | [Questionnaire-patients-fetal-death] |       -       |    Not a profile    | -->


| Name of Extension  | change  |  Current Extension   | New Extension  | Comment |
| ------------------ | ------- | ------------------ | ------------ | ----- | 
|Fetal Death Report Number  |    -    | [ExtensionFetalDeathReportNumber] |     -       |   -      |
|Fetal Death Local File Number  |    -    | [ExtensionFetalDeathLocalFileNumber] |     -      |   -      |
|Date Received by Registrar |    -    | [ExtensionDatereceivedByRegistrar] |     -         |   -      |
|Replacement Status |    -    | [ReplaceStatus] |     -         |    The use of this extension has been deprecated and wil be ignored for NCHS submissions.  |
|Encounter Maternity Reference |    -    | [ExtensionEncounterMaternityReference] |     -         |   -  |
{: .grid }
<!-- |Partial Date  |    -    | [PartialDate] |    [ExtensionDatePartAbsentReasonVitalRecords]         |   -      |
|Partial Date Time  |    -    | [PartialDateTime] | [ExtensionPartialDateTimeVitalRecords]             |    -     | -->

# Jurisdiction Live Birth

| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
|Encounter-Birth |   encounter  |    -    | [EncounterBirth] |     -         |   -      |
|Patient-Child |   subject  |    adding edit flag extension to patient VR     |   [PatientChildVitalRecords] |     [PatientChildVitalRecordsNew]     |   staying in VRCL with updates   |
|US Core Organization Profile |   Author  |    -    | [USCoreOrganization] |     -         |   -      |
|Patient-Mother |   focus  |    adding edit flag extension to patient VR     | [PatientMotherVitalRecords] |     [PatientMotherVitalRecordsNew]        |   staying in VRCL with updates   |
|Planned to Deliver at Home |   motherPrenatal  |    -    | [ObservationPlannedToDeliverAtHome] |     -         |   -      |
|Number Prenatal Care Visits|     motherPrenatal     |    adding edit flag extension    | [ObservationNumberPrenatalVisitsVitalRecords] |   [ObservationNumberPrenatalVisitsNew]    |    moving from VRCL to BFDR    |
|Date Last Normal Menses |     motherPrenatal     |    -    | [ObservationLastMenstrualPeriodVitalRecords] |     [ObservationLastMenstrualPeriodNew]     |    moving from VRCL to BFDR    |
|Number Now Living |     motherPrenatal     |    -    | [ObservationNumberBirthsNowLivingVitalRecords] |    [ObservationNumberBirthsNowLivingNew]    |    moving from VRCL to BFDR    |
|Number Now Dead |     motherPrenatal     |    -    | [ObservationNumberBirthsNowDeadVitalRecords] |     [ObservationNumberBirthsNowDeadNew]     |    moving from VRCL to BFDR    |
|Date Last Live Birth |     motherPrenatal     |    -    | [ObservationDateOfLastLiveBirth] |       -       |    -     |
|Number Other Outcomes |     motherPrenatal     |    -    | [ObservationNumberOtherPregnancyOutcomesVitalRecords] | [ObservationNumberOtherPregnancyOutcomesNew]     |    moving from VRCL to BFDR    |
|Date Last Other Outcome |     motherPrenatal     |    -    | [ObservationDateOfLastOtherPregnancyOutcome] |       -       |    -     |
|Principal Source of Payment |    motherPrenatal     |    -    | [CoveragePrincipalPayerDelivery] |       -       |    -     |
|Mother's Weight at Delivery |     motherPrenatal    |    adding edit flag extension    | [ObservationMotherDeliveryWeightVitalRecords] |    [ObservationMotherDeliveryWeightNew]     |    moving from VRCL to BFDR    |
|Mother's Height |     motherPrenatal    |    adding edit flag extension    | [ObservationMotherHeightVitalRecords] | [ObservationMotherHeightNew] |    moving from VRCL to BFDR    |
|Mother's Prepregancy Weight|     motherPrenatal     |    adding edit flag extension    | [ObservationMotherPrepregnancyWeightVitalRecords] |   [ObservationMotherPrepregnancyWeightNew]    |    moving from VRCL to BFDR    |
|Mother Received WIC Food|     motherPrenatal     |    -    | [ObservationMotherReceivedWICFood] |       -       |    -     |
|Cigarette Smoking Before During Pregnancy|     motherPrenatal     |    -    | [ObservationCigaretteSmokingBeforeDuringPregnancy] |       -       |    -     |
|Prepregnancy Diabetes |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionPrepregnancyDiabetesNew]   |    Risk factors broken up into individual profiles    |
|Gestational Diabetes |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionGestationalDiabetesNew]   |    Risk factors broken up into individual profiles    |
|Prepregnancy Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionPrepregnancyHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Gestational Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionGestationalHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Eclampsia Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionEclampsiaHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Previous Preterm Birth |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPreviousPretermBirthNew]   |    Risk factors broken up into individual profiles    |
|Infertility Treatment |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureInfertilityTreatmentNew]   |    Risk factors broken up into individual profiles    |
|Artificial Insemination |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureArtificialInseminationNew]   |    Risk factors broken up into individual profiles    |
|Assisted Fertilization |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureAssistedFertilizationNew]   |    Risk factors broken up into individual profiles    |
|Previous Cesarean |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPreviousCesareanNew]   |    Risk factors broken up into individual profiles    |
|None Of Specified Pregnancy Risk Factors |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationNoneOfSpecifiedPregnancyRiskFactorsNew]   |    Risk factors broken up into individual profiles    |
|Number Previous Cesareans |     medicalHealthInformation     |    adding edit flag extension    | [ObservationNumberPreviousCesareansVitalRecords] |  [ObservationNumberPreviousCesareansNew]   |    moving from VRCL to BFDR    |
|Infections During Pregnancy |     medicalHealthInformation   |    -    | [ConditionInfectionPresentDuringPregnancy] |       -       |    -     |
|Obstetric Procedures |     medicalHealthInformation    |    -    | [ProcedureObstetric] |       -       |    -     |
|Induction of Labor |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ProcedureInductionOfLabor] |       -       |    -     |
|Augmentation of Labor |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ProcedureAugmentationOfLabor] |       -       |    -     |
|Steroids Fetal Lung Maturation |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ObservationSteroidsFetalLungMaturation] |       -       |    -     |
|Antibiotics Administered During Labor |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ObservationAntibioticsAdministeredDuringLabor] |     -       |    -     |
|Chorioamnionitis |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ConditionChorioamnionitis]  |       -       |    -     |
|Epidural or Spinal Anesthesia |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ProcedureEpiduralOrSpinalAnesthesia]  |       -       |    -     |
|None of Specified Characteristics of Labor and Delivery |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ObservationNoneOfSpecifiedCharacteristicsOfLaborAndDelivery]  |       -       |    -     |
|Fetal Presentations |     medicalHealthInformation   |    -    | [ObservationFetalPresentation] |       -       |    -     |
|Final Route Method Delivery|     medicalHealthInformation   |    -    | [ProcedureFinalRouteMethodDelivery] |       -       |    -     |
|Blood Transfusion |     medicalHealthInformation/Maternal Morbidity    |    -    | [ProcedureBloodTransfusion] |       -       |    -     |
|Perineal Laceration |     medicalHealthInformation/Maternal Morbidity    |    -    | [ConditionPerinealLaceration] |       -       |    -     |
|Ruptured Uterus  |     medicalHealthInformation/Maternal Morbidity    |    -    | [ConditionRupturedUterus] |       -       |    -     |
|Unplanned Hysterectomy |     medicalHealthInformation/Maternal Morbidity    |    -    | [ProcedureUnplannedHysterectomy] |       -       |    -     |
|ICU Admission |     medicalHealthInformation/Maternal Morbidity    |    -    | [ObservationICUAdmission] |       -       |    -     |
|None of Specified Maternal Morbidities |     medicalHealthInformation/Maternal Morbidity    |    -    | [ObservationNoneOfSpecifiedMaternalMorbidities] |       -       |    -     |
|Birth Weight |     newbornInformation   |    adding edit flag extension    | [ObservationBirthWeightVitalRecords] |    [ObservationBirthWeightNew]    |    moving from VRCL to BFDR    |
|Gestational Age at Delivery |     newbornInformation    |    adding edit flag extension   | [ObservationGestationalAgeAtDeliveryVitalRecords] |  [ObservationGestationalAgeAtDeliveryNew]   |    moving from VRCL to BFDR    |
|Apgar Score |     newbornInformation    |    -    | [ObservationApgarScoreVitalRecords] | [ObservationApgarScoreNew]  |    moving from VRCL to BFDR    |
|Number Live Births This Delivery |     newbornInformation   |    -    | [ObservationNumberLiveBirthsThisDeliveryVitalRecords] |   [ObservationNumberLiveBirthsThisDeliveryNew]   |    moving from VRCL to BFDR    |
|Assisted Ventilation Following Delivery |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ProcedureassistedVentilationFollowingDelivery]  |       -       |    -     |
|Assisted Ventilation More than Six Hours  |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ProcedureassistedVentilationMoreThanSixHours]   |       -       |    -     |
|NICU Admission |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ObservationNICUAdmission]   |       -       |    -     |
|Surfactant Replacement Therapy |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ProcedureSurfactantReplacementTherapy]   |       -       |    -     |
|Antibiotic Suspected Neonatal Sepsis |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ProcedureAntibioticSuspectedNeonatalSepsis]   |       -       |    -     |
|Seizure|     newbornInformation/Abnormal Conditions Newborn  |    -    | [ConditionSeizure]   |       -       |    -     |
|None of Specified Abnormal Conditions of Newborn |     newbornInformation/Abnormal Conditions Newborn  |    -    | [ObservationNoneOfSpecifiedAbnormalConditionsOfNewborn] |       -       |    -     |
|Congenital Anomalies Newborn |     newbornInformation    |    -    |    [ConditionCongenitalAnomalyOfNewborn]    |    -    |    -     |
|Infant Living |     newbornInformation    |    -    | [ObservationInfantLivingVitalRecords] |     [ObservationInfantLivingNew]    |    moving from VRCL to BFDR    |
|Infant Breastfed at Discharge|     newbornInformation    |    -    | [ObservationInfantBreastfedAtDischarge] |       -       |    -     |
|Married During Pregnancy |     motherInformation   |    -    | [ObservationMotherMarriedDuringPregnancy] |       -       |    -     |
|SSN Requested for Child |     motherInformation   |    -    | [ObservationSSNRequestedForChild] |       -       |    -     |
|Father Related Person |     fatherInformation  |   adding edit flag extension to related person profile  | [RelatedPersonFatherNaturalVitalRecords] | - |  - |
|Fathers Education |     fatherInformation  |   added Decedent education level code, removed MS flags, adding edit flag extension   | [ObservationParentEducationLevelVitalRecords] | [ObservationEducationLevelVitalRecordsNew] |  - |
|Paternity Acknowledgement Signed |     fatherInformation   |    -    | [ObservationPaternityAcknowledgementSigned] |       -       |    -     |
| Edit Flag Birthweight  |     editFlags  |   deleted and replaced by extensions in related profiles  | [ObservationEditFlagBirthweight] |       -       |    -     |
| Edit Flag Estimate of Gestation  |     editFlags  |   deleted and replaced by extensions in related profiles    | [ObservationEditFlagEstimateOfGestation] |       -       |    -     |
| Edit Flag Father's Date of Birth  |     editFlags  |    deleted and replaced by extensions in related profiles   | [ObservationEditFlagFathersDateOfBirth] |       -       |    -     |
| Edit Flag Father's Education  |     editFlags  |   deleted and replaced by extensions in related profiles    | [ObservationEditFlagFathersEducation] |       -       |    -     |
| Edit Flag Mother's Date of Birth  |     editFlags  |    deleted and replaced by extensions in related profiles    | [ObservationEditFlagMothersDateOfBirth] |       -       |    -     |
| Edit Flag Mother's Delivery Weight  |     editFlags  |    deleted and replaced by extensions in related profiles    | [ObservationEditFlagMothersDeliveryWeight] |       -       |    -     |
| Edit Flag Father's Education  |     editFlags  |    deleted and replaced by extensions in related profiles   | [ObservationEditFlagMothersEducation] |       -       |    -     |
| Edit Flag Mother's Height  |     editFlags  |   deleted and replaced by extensions in related profiles    | [ObservationEditFlagMothersHeight] |       -       |    -     |
| Edit Flag Mother's Prepregnancy Weight  |     editFlags  |   deleted and replaced by extensions in related profiles   | [ObservationEditFlagMothersPrepregnancyWeight] |       -       |    -     |
| Edit Flag Number Prenatal Care Visits  |     editFlags  |    deleted and replaced by extensions in related profiles   | [ObservationEditFlagNumberPrenatalCareVisits] |       -       |    -     |
| Edit Flag Number of Previous Cesareans  |     editFlags  |   deleted and replaced by extensions in related profiles    | [ObservationEditFlagNumberPreviousCesareans] |       -       |    -     |
| Edit Flag Plurality  |     editFlags  |   deleted and replaced by extensions in related profiles    | [ObservationEditFlagPlurality] |       -       |    -     |
{: .grid }

# Jurisdiction Fetal Death

| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
|Patient-Decedent Fetus |   subject  |    adding edit flag extension to patient VR     | [PatientDecedentFetusVitalRecords] |  [PatientDecedentFetusVitalRecordsNew]   |   staying in VRCL with updates   |
|Encounter-Maternity |   encounter  |    -    | [Encounter_Maternity] |     -         |   -      |
|US Core Organization Profile |   Author  |    -    | [USCoreOrganization] |     -         |   -      |
|Patient-Mother |   focus  |    adding edit flag extension to patient VR     | [PatientMotherVitalRecords] |     [PatientMotherVitalRecordsNew]        |   staying in VRCL with updates   |
|Planned to Deliver at Home |   motherPrenatal  |    -    | [ObservationPlannedToDeliverAtHome] |     -         |   -      |
|Number Prenatal Care Visits|     motherPrenatal     |    -    | [ObservationDateOfFirstPrenatalCareVisit] |   -    |    -    |
|Date Last Normal Menses |     motherPrenatal     |    -    | [ObservationLastMenstrualPeriodVitalRecords] |     [ObservationLastMenstrualPeriodNew]     |    moving from VRCL to BFDR    |
|Number Now Living |     motherPrenatal     |    -    | [ObservationNumberBirthsNowLivingVitalRecords] |    [ObservationNumberBirthsNowLivingNew]    |    moving from VRCL to BFDR    |
|Number Now Dead |     motherPrenatal     |    -    | [ObservationNumberBirthsNowDeadVitalRecords] |     [ObservationNumberBirthsNowDeadNew]     |    moving from VRCL to BFDR    |
|Date Last Live Birth |     motherPrenatal     |    -    | [ObservationDateOfLastLiveBirth] |       -       |    -     |
|Mother's Height |     motherPrenatal    |    adding edit flag extension    | [ObservationMotherHeightVitalRecords] | [ObservationMotherHeightNew] |    moving from VRCL to BFDR    |
|Mother's Prepregancy Weight|     motherPrenatal     |    adding edit flag extension    | [ObservationMotherPrepregnancyWeightVitalRecords] |   [ObservationMotherPrepregnancyWeightNew]    |    moving from VRCL to BFDR    |
|Mother Received WIC Food|     motherPrenatal     |    -    | [ObservationMotherReceivedWICFood] |       -       |    -     |
|Cigarette Smoking Before During Pregnancy|     motherPrenatal     |    -    | [ObservationCigaretteSmokingBeforeDuringPregnancy] |       -       |    -     |
|Prepregnancy Diabetes |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionPrepregnancyDiabetesNew]   |    Risk factors broken up into individual profiles    |
|Gestational Diabetes |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionGestationalDiabetesNew]   |    Risk factors broken up into individual profiles    |
|Prepregnancy Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionPrepregnancyHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Gestational Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionGestationalHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Eclampsia Hypertension |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ConditionEclampsiaHypertensionNew]   |    Risk factors broken up into individual profiles    |
|Previous Preterm Birth |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPreviousPretermBirthNew]   |    Risk factors broken up into individual profiles    |
|Infertility Treatment |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureInfertilityTreatmentNew]   |    Risk factors broken up into individual profiles    |
|Artificial Insemination |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureArtificialInseminationNew]   |    Risk factors broken up into individual profiles    |
|Assisted Fertilization |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ProcedureAssistedFertilizationNew]   |    Risk factors broken up into individual profiles    |
|Previous Cesarean |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPreviousCesareanNew]   |    Risk factors broken up into individual profiles    |
|None Of Specified Pregnancy Risk Factors |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationNoneOfSpecifiedPregnancyRiskFactorsNew]   |    Risk factors broken up into individual profiles    |
|Number Previous Cesareans |     medicalHealthInformation     |    adding edit flag extension    | [ObservationNumberPreviousCesareansVitalRecords] |  [ObservationNumberPreviousCesareansNew]   |    moving from VRCL to BFDR    |
|Infections During Pregnancy |     medicalHealthInformation   |    -    | [ConditionInfectionPresentDuringPregnancy] |       -       |    -     |
|Obstetric Procedures |     medicalHealthInformation    |    -    | [ProcedureObstetric] |       -       |    -     |
|Induction of Labor |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ProcedureInductionOfLabor] |       -       |    -     |
|Augmentation of Labor |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ProcedureAugmentationOfLabor] |       -       |    -     |
|Steroids Fetal Lung Maturation |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ObservationSteroidsFetalLungMaturation] |       -       |    -     |
|Antibiotics Administered During Labor |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ObservationAntibioticsAdministeredDuringLabor] |     -       |    -     |
|Chorioamnionitis |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ConditionChorioamnionitis]  |       -       |    -     |
|Epidural or Spinal Anesthesia |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ProcedureEpiduralOrSpinalAnesthesia]  |       -       |    -     |
|None of Specified Characteristics of Labor and Delivery |     medicalHealthInformation/Characteristics Labor Delivery    |    -    | [ObservationNoneOfSpecifiedCharacteristicsOfLaborAndDelivery]  |       -       |    -     |
|Fetal Presentations |     medicalHealthInformation   |    -    | [ObservationFetalPresentation] |       -       |    -     |
|Final Route Method Delivery|     medicalHealthInformation   |    -    | [ProcedureFinalRouteMethodDelivery] |       -       |    -     |
|Blood Transfusion |     medicalHealthInformation/Maternal Morbidity    |    -    | [ProcedureBloodTransfusion] |       -       |    -     |
|Perineal Laceration |     medicalHealthInformation/Maternal Morbidity    |    -    | [ConditionPerinealLaceration] |       -       |    -     |
|Ruptured Uterus  |     medicalHealthInformation/Maternal Morbidity    |    -    | [ConditionRupturedUterus] |       -       |    -     |
|Unplanned Hysterectomy |     medicalHealthInformation/Maternal Morbidity    |    -    | [ProcedureUnplannedHysterectomy] |       -       |    -     |
|ICU Admission |     medicalHealthInformation/Maternal Morbidity    |    -    | [ObservationICUAdmission] |       -       |    -     |
|None of Specified Maternal Morbidities |     medicalHealthInformation/Maternal Morbidity    |    -    | [ObservationNoneOfSpecifiedMaternalMorbidities] |       -       |    -     |
|Birth Weight |     newbornInformation   |    adding edit flag extension    | [ObservationBirthWeightVitalRecords] |    [ObservationBirthWeightNew]    |    moving from VRCL to BFDR    |
|Gestational Age at Delivery |     newbornInformation    |    adding edit flag extension    | [ObservationGestationalAgeAtDeliveryVitalRecords] |  [ObservationGestationalAgeAtDeliveryNew]   |    moving from VRCL to BFDR    |
|Cause of Fetal Death |     fetus     |    -    | [ConditionFetalDeathCauseOrCondition] |       -       |    -     |
|Other Cause of Death |     fetus    |    -    | [ConditionFetalDeathOtherCauseOrCondition] |       -       |    -     |
|Estimated Time Fetal Death |     fetus     |    -    | [ObservationFetalDeathTimePoint] |    -    |    -     |
|Autopsy Performed |     fetus     |    -    | [AutopsyPerformedIndicator] |    -    |    -     |
|Histological Exam Performed |     fetus     |    -    | [ObservationHistologicalPlacentalExamPerformed] |       -       |    -     |
|Autopsy or Histological Exam Used|     fetus     |    -    | [ObservationAutopsyHistologicalExamResultsUsed] |       -       |    -     |
|Number Live Births This Delivery |     fetus    |    -    | [ObservationNumberLiveBirthsThisDeliveryVitalRecords] |  [ObservationNumberLiveBirthsThisDeliveryNew]  |    moving from VRCL to BFDR    |
|Number Fetal Deaths This Delivery |     fetus    |    -    | [ObservationNumberFetalDeathsThisDeliveryVitalRecords] |  [ObservationNumberFetalDeathsThisDeliveryNew]   |    moving from VRCL to BFDR    |
|Father Related Person |     fatherInformation  |   adding edit flag extension to related person profile  | [RelatedPersonFatherNaturalVitalRecords] | - |  - |
|Fathers Education |     fatherInformation  |   added Decedent education level code, removed MS flags, adding edit flag extension   | [ObservationParentEducationLevelVitalRecords] | [ObservationEducationLevelVitalRecordsNew] |  - |
| Edit Flag Weight of Fetus  |     editFlags  |    deleted and replaced by extensions in related profiles    | [ObservationEditFlagBirthweight] |       -       |    -     |
| Edit Flag Estimate of Gestation  |     editFlags  |    deleted and replaced by extensions in related profiles    | [ObservationEditFlagEstimateOfGestation] |       -       |    -     |
| Edit Flag Mother's Date of Birth  |     editFlags  |    deleted and replaced by extensions in related profiles    | [ObservationEditFlagMothersDateOfBirth] |       -       |    -     |
| Edit Flag Father's Education  |     editFlags  |    deleted and replaced by extensions in related profiles    | [ObservationEditFlagMothersEducation] |       -       |    -     |
| Edit Flag Mother's Height  |     editFlags  |    deleted and replaced by extensions in related profiles   | [ObservationEditFlagMothersHeight] |       -       |    -     |
| Edit Flag Mother's Prepregnancy Weight  |     editFlags  |    deleted and replaced by extensions in related profiles    | [ObservationEditFlagMothersPrepregnancyWeight] |       -       |    -     |
| Edit Flag Number of Previous Cesareans  |     editFlags  |    deleted and replaced by extensions in related profiles    | [ObservationEditFlagNumberPreviousCesareans] |       -       |    -     |
| Edit Flag Plurality  |     editFlags  |    deleted and replaced by extensions in related profiles    | [ObservationEditFlagPlurality] |       -       |    -     |
{: .grid }

# Demographic Coded Content Bundle for BFDR

| Name of Profile  | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
| Coded Race and Ethnicity |     CodedContent   |    -    |    -    |      [CodedRaceAndEthnicityNew]       |    -     |
| Input Race and Ethnicity |     InputContent    |    -    |    -    |       [InputRaceAndEthnicityNew]       |    -     |
{: .grid }

<!-- # Coded Race and Ethnicity - same as VRDR, ignore for now -->

<!-- # Coded Cause of Fetal Death - needs review, ignore for now -->


{% include markdown-link-references.md %}