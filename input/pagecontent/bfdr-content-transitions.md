# Provider Live Birth

| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
|Patient-Child |   subject  |    -    | [PatientChildVitalRecords] |     [PatientChildNew]       |   moving from VRCL to BFDR   |
| Mother's Race and Ethnicity| motherInfo |    -    |  <not included> | [InputRaceAndEthnicityNew] | moving from VRDR to VRCL |
| Father's Race and Ethnicity| motherInfo |    -    |  <not included> | [InputRaceAndEthnicityNew] | moving from VRDR to VRCL |
|Encounter-Birth |   encounter  |    -    | [EncounterBirth] |     -         |   -      |
|Encounter-Maternity (ext) |   encounter  |    -    | [Encounter_Maternity] |     -         |   -      |
|Practitioner |   author  |  generalized profile that adds a further constraint to capture the title of the practitioner  | [PractitionerVitalRecords] | [PractitionerVitalRecordsNew] | - |
|Patient-Mother |   focus  |    -    | [PatientMotherVitalRecords] |     [PatientMotherNew]        |   moving from VRCL to BFDR   |
|Planned to Deliver at Home |   motherPrenatal  |    -    | [ObservationPlannedToDeliverAtHome] |     -         |   -      |
|First Prenatal Care Visit |   motherPrenatal  |    -    | [ObservationDateOfFirstPrenatalCareVisit] |       -       |    -     |
|Number Prenatal Care Visits|     motherPrenatal     |    -    | [ObservationNumberPrenatalVisitsVitalRecords] |   [ObservationNumberPrenatalVisitsNew]    |    moving from VRCL to BFDR    |
|Date Last Normal Menses |     motherPrenatal     |    -    | [ObservationLastMenstrualPeriodVitalRecords] |     [ObservationLastMenstrualPeriodNew]     |    moving from VRCL to BFDR    |
|Number Now Living |     motherPrenatal     |    -    | [ObservationNumberBirthsNowLivingVitalRecords] |    [ObservationNumberBirthsNowLivingNew]    |    moving from VRCL to BFDR    |
|Number Now Dead |     motherPrenatal     |    -    | [ObservationNumberBirthsNowDeadVitalRecords] |     [ObservationNumberBirthsNowDeadNew]     |    moving from VRCL to BFDR    |
|Number Other Outcomes |     motherPrenatal     |    -    | [ObservationNumberOtherPregnancyOutcomesVitalRecords] | [ObservationNumberOtherPregnancyOutcomesNew]     |    moving from VRCL to BFDR    |
|Date Last Other Outcome |     motherPrenatal     |    -    | [ObservationDateOfLastOtherPregnancyOutcome] |       -       |    -     |
|Principal Source of Payment |    motherPrenatal     |    -    | [CoveragePrincipalPayerDelivery] |       -       |    -     |
|Mother's Weight at Delivery |     motherPrenatal    |    -    | [ObservationMotherDeliveryWeightVitalRecords] |    [ObservationMotherDeliveryWeightNew]     |    moving from VRCL to BFDR    |
|Mother's Height |     motherPrenatal    |    -    | [ObservationMotherHeightVitalRecords] | [ObservationMotherHeightNew] |    moving from VRCL to BFDR    |
|Mother's Prepregancy Weight|     motherPrenatal     |    -    | [ObservationMotherPrepregnancyWeightVitalRecords] |   [ObservationMotherPrepregnancyWeightNew]    |    moving from VRCL to BFDR    |
|Mother Received WIC Food|     motherPrenatal     |    -    | [ObservationMotherReceivedWICFood] |       -       |    -     |
|Cigarette Smoking Before During Pregnancy|     motherPrenatal     |    -    | [ObservationCigaretteSmokingBeforeDuringPregnancy] |       -       |    -     |
|Pregnancy Risk Factors |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPregnancyRiskFactorNew]   |    moving from VRCL to BFDR, new valueSet from Phinvads    |
|Number Previous Cesareans |     medicalHealthInformation     |    -    | [ObservationNumberPreviousCesareansVitalRecords] |  [ObservationNumberPreviousCesareansNew]   |    moving from VRCL to BFDR    |
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
|Birth Weight |     newbornInformation   |    -    | [ObservationBirthWeightVitalRecords] |    [ObservationBirthWeightNew]    |    moving from VRCL to BFDR    |
|Gestational Age at Delivery |     newbornInformation    |    -    | [ObservationGestationalAgeAtDeliveryVitalRecords] |  [ObservationGestationalAgeAtDeliveryNew]   |    moving from VRCL to BFDR    |
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
|Mothers Education|     motherInformation   |  added Decedent education level code, removed MS flags  | [ObservationParentEducationLevelVitalRecords] | [ObservationEducationLevelVitalRecordsNew] |  - |
|Paternity Acknowledgement Signed |     fatherInformation   |    -    | [ObservationPaternityAcknowledgementSigned] |       -       |    -     |
|Fathers Education|     fatherInformation  |   added Decedent education level code, removed MS flags   | [ObservationParentEducationLevelVitalRecords] | [ObservationEducationLevelVitalRecordsNew] |  - |
|Questionnaire-Mother's Worksheet for Child's Birth Certificate |     mothersQuestionnaireResponse   |    -    | [Questionnaire-mothers-live-birth] |       -       |    -     |
{: .grid }

| Name of Extension  | change  |  Current Extension   | New Extension  | Comment |
| ------------------ | ------- | ------------------ | ------------ | ----- | 
|Live Birth Certificate Number  |    -    | [ExtensionLiveBirthCertificateNumber] |     -       |   -      |
|Live Birth Local File Number  |    -    | [ExtensionLiveBirthLocalFileNumber] |     -      |   -      |
|Date Filed by Registrar |    -    | [ExtensionDateFiledByRegistrar] |     -         |   -      |
|Partial Date  |    -    | [PartialDate] |    [ExtensionDatePartAbsentReasonVitalRecords]         |   -      |
|Partial Date Time  |    -    | [PartialDateTime] | [ExtensionPartialDateTimeVitalRecords]             |    -     |
{: .grid }

# Provider Fetal Death

| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
|Patient-Decedent Fetus |   subject  |    -    | [PatientDecedentFetusVitalRecords] |  [PatientDecedentFetusNew]   |   moving from VRCL to BFDR   |
|Encounter-Maternity |   encounter  |    -    | [Encounter_Maternity] |     -         |   -      |
|Practitioner |   author  |    generalized profile that adds a further constraint to capture the title of the practitioner    | [PractitionerVitalRecords] | [PractitionerVitalRecordsNew] |  -  |
|Patient-Mother |   focus  |    -    | [PatientMotherVitalRecords] |   [PatientMotherNew]    |   moving from VRCL to BFDR    |
| Mother's Race and Ethnicity| motherInfo |    -    |  <not included> | [InputRaceAndEthnicityNew] | moving from VRDR to VRCL |
|Planned to Deliver at Home |   motherPrenatal  |    -    | [ObservationPlannedToDeliverAtHome] |     -         |   -      |
|First Prenatal Care Visit |   motherPrenatal  |    -    | [ObservationDateOfFirstPrenatalCareVisit] |       -       |    -     |
|Date Last Normal Menses |     motherPrenatal     |    -    | [ObservationLastMenstrualPeriodVitalRecords] |   [ObservationLastMenstrualPeriodNew]   |    moving from VRCL to BFDR    |
|Number Now Living |     motherPrenatal     |    -    | [ObservationNumberBirthsNowLivingVitalRecords] |   [ObservationNumberBirthsNowLivingNew]    |    moving from VRCL to BFDR    |
|Number Now Dead |     motherPrenatal     |    -    | [ObservationNumberBirthsNowDeadVitalRecords] |   [ObservationNumberBirthsNowDeadNew]   |    moving from VRCL to BFDR    |
|Date Last Live Birth |     motherPrenatal     |    -    | [ObservationDateOfLastLiveBirth] |       -       |    -     |
|Mother's Height |     motherPrenatal    |    -    | [ObservationMotherHeightVitalRecords] |  [ObservationMotherHeightNew]   |    moving from VRCL to BFDR    |
|Mother's Prepregancy Weight|     motherPrenatal     |    -    | [ObservationMotherPrepregnancyWeightVitalRecords] |   [ObservationMotherPrepregnancyWeightNew]    |    moving from VRCL to BFDR    |
|Mother Received WIC Food|     motherPrenatal     |    -    | [ObservationMotherReceivedWICFood] |       -       |    -     |
|Cigarette Smoking Before During Pregnancy|     motherPrenatal     |    -    | [ObservationCigaretteSmokingBeforeDuringPregnancy] |       -       |    -     |
|Pregnancy Risk Factors |     medicalHealthInformation    |    -    | [ObservationPregnancyRiskFactorVitalRecords] |   [ObservationPregnancyRiskFactorNew]   |    moving from VRCL to BFDR, new valueSet from Phinvads    |
|Number Previous Cesareans |     medicalHealthInformation     |    -    | [ObservationNumberPreviousCesareansVitalRecords] |  [ObservationNumberPreviousCesareansNew]   |    moving from VRCL to BFDR    |
|Fetal Presentations |     medicalHealthInformation   |    -    | [ObservationFetalPresentation] |       -       |    -     |
|Final Route Method Delivery|     medicalHealthInformation   |    -    | [ProcedureFinalRouteMethodDelivery] |       -       |    -     |
|Blood Transfusion |     medicalHealthInformation/Maternal Morbidity   |    -    | [ProcedureBloodTransfusion] |       -       |    -     |
|Perineal Laceration |     medicalHealthInformation/Maternal Morbidity   |    -    | [ConditionPerinealLaceration] |       -       |    -     |
|Ruptured Uterus |     medicalHealthInformation/Maternal Morbidity   |    -    | [ConditionRupturedUterus] |       -       |    -     |
|Unplanned Hysterectomy |     medicalHealthInformation/Maternal Morbidity   |    -    | [ProcedureUnplannedHysterectomy] |       -       |    -     |
|ICU Admission|     medicalHealthInformation/Maternal Morbidity   |    -    | [ObservationICUAdmission] |       -       |    -     |
|None of Specified Maternal Morbidities|     medicalHealthInformation/Maternal Morbidity   |    -    | [ObservationNoneOfSpecifiedMaternalMorbidities] |       -       |    -     |
|Delivery Weight |     fetus   |    -    | [ObservationBirthWeightVitalRecords] | [ObservationBirthWeightNew]   |    moving from VRCL to BFDR    |
|Gestational Age at Delivery |     fetus     |    -    | [ObservationGestationalAgeAtDeliveryVitalRecords] |   [ObservationGestationalAgeAtDeliveryNew]   |    moving from VRCL to BFDR    |
|Cause of Fetal Death |     fetus     |    -    | [ConditionFetalDeathCauseOrCondition] |       -       |    -     |
|Other Cause of Death |     fetus    |    -    | [ConditionFetalDeathOtherCauseOrCondition] |       -       |    -     |
|Estimated Time Fetal Death |     fetus     |    -    | [ObservationFetalDeathTimePoint] |    -    |    -     |
|Autopsy Performed |     fetus     |    -    | [AutopsyPerformedIndicator] |    -    |    -     |
|Histological Exam Performed |     fetus     |    -    | [ObservationHistologicalPlacentalExamPerformed] |       -       |    -     |
|Autopsy or Histological Exam Used|     fetus     |    -    | [ObservationAutopsyHistologicalExamResultsUsed] |       -       |    -     |
|Number Live Births This Delivery |     fetus    |    -    | [ObservationNumberLiveBirthsThisDeliveryVitalRecords] |  [ObservationNumberLiveBirthsThisDeliveryNew]  |    moving from VRCL to BFDR    |
|Number Fetal Deaths This Delivery |     fetus    |    -    | [ObservationNumberFetalDeathsThisDeliveryVitalRecords] |  [ObservationNumberFetalDeathsThisDeliveryNew]   |    moving from VRCL to BFDR    |
|Mothers Education|     motherInformation   |    added Decedent education level code, removed MS flags   | [ObservationParentEducationLevelVitalRecords] | [ObservationEducationLevelVitalRecordsNew] |  -  |
|Patients Questionnaire Response |     patientsQuestionnaireResponse   |    -    | [Questionnaire-patients-fetal-death] |       -       |    -     |
{: .grid }

| Name of Extension  | change  |  Current Extension   | New Extension  | Comment |
| ------------------ | ------- | ------------------ | ------------ | ----- | 
|Fetal Death Report Number  |    -    | [ExtensionFetalDeathReportNumber] |     -       |   -      |
|Fetal Death Local File Number  |    -    | [ExtensionFetalDeathLocalFileNumber] |     -      |   -      |
|Date Received by Registrar |    -    | [ExtensionDatereceivedByRegistrar] |     -         |   -      |
|Partial Date  |    -    | [PartialDate] |    [ExtensionDatePartAbsentReasonVitalRecords]         |   -      |
|Partial Date Time  |    -    | [PartialDateTime] | [ExtensionPartialDateTimeVitalRecords]             |    -     |
{: .grid }

# Coded Race and Ethnicity

| Name of Profile  | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
| Coded Race and Ethnicity |     CodedContent   |    -    |    -    |      [CodedRaceAndEthnicityNew]       |    -     |
| Input Race and Ethnicity |     InputContent    |    -    |    -    |       [InputRaceAndEthnicityNew]       |    -     |
{: .grid }

<!-- # Jurisdiction Live Birth - same as above but with edit flags -->

<!-- # Jurisdiction Fetal Death - same as above but with edit flags -->

<!-- # Coded Race and Ethnicity - same as VRDR, ignore for now -->

<!-- # Coded Cause of Fetal Death - needs review, ignore for now -->


{% include markdown-link-references.md %}