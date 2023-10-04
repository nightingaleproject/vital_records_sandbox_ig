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
| 186 | Characteristics of Labor & Delivery--Chorioamnionitis | CHOR| [ConditionChorioamnionitis]| | na | See [Note on missing data] | 
| 219 | Congenital Anomalies of the Newborn--Anencephaly | ANEN| [ConditionCongenitalAnomalyOfNewborn]|code=89369001 | na | See [Note on missing data] | 
| 220 | Congenital Anomalies of the Newborn--Meningomyelocele/Spina Bifida | MNSB| [ConditionCongenitalAnomalyOfNewborn]|code=67531005 | na | See [Note on missing data] | 
| 221 | Congenital Anomalies of the Newborn--Cyanotic congenital heart disease | CCHD| [ConditionCongenitalAnomalyOfNewborn]|code=12770006 | na | See [Note on missing data] | 
| 222 | Congenital Anomalies of the Newborn--Congenital diaphragmatic hernia | CDH| [ConditionCongenitalAnomalyOfNewborn]|code=17190001 | na | See [Note on missing data] | 
| 223 | Congenital Anomalies of the Newborn--Omphalocele | OMPH| [ConditionCongenitalAnomalyOfNewborn]|code=18735004 | na | See [Note on missing data] | 
| 224 | Congenital Anomalies of the Newborn--Gastroschisis | GAST| [ConditionCongenitalAnomalyOfNewborn]|code=72951007 | na | See [Note on missing data] | 
| 225 | Congenital Anomalies of the Newborn--Limb Reduction Defect | LIMB| [ConditionCongenitalAnomalyOfNewborn]|code=67341007 | na | See [Note on missing data] | 
| 226 | Congenital Anomalies of the Newborn--Cleft Lip with or without Cleft Palate | CL| [ConditionCongenitalAnomalyOfNewborn]|code=80281008 | na | See [Note on missing data] | 
| 227 | Congenital Anomalies of the Newborn--Cleft Palate Alone | CP| [ConditionCongenitalAnomalyOfNewborn]|code=87979003 | na | See [Note on missing data] | 
| 228 | Congenital Anomalies of the Newborn--Down Syndrome | DOWT| [ConditionCongenitalAnomalyOfNewborn]|code=70156005 | na | See [Note on missing data] | 
| 229 | Congenital Anomalies of the Newborn--Suspected Chromosomal disorder | CDIT| [ConditionCongenitalAnomalyOfNewborn]|code=409709004 | na | See [Note on missing data] | 
| 230 | Congenital Anomalies of the Newborn--Hypospadias | HYPO| [ConditionCongenitalAnomalyOfNewborn]|code=416010008 | na | See [Note on missing data] | 
| 168 | Infections Present--Gonorrhea | GON| [ConditionInfectionPresentDuringPregnancy]|code=15628003 | na | See [Note on missing data] | 
| 169 | Infections Present--Syphilis | SYPH| [ConditionInfectionPresentDuringPregnancy]|code=76272004 | na | See [Note on missing data] | 
| 171 | Infections Present--Chlamydia | CHAM| [ConditionInfectionPresentDuringPregnancy]|code=105629000 | na | See [Note on missing data] | 
| 172 | Infections Present--Hepatitis B | HEPB| [ConditionInfectionPresentDuringPregnancy]|code=66071002 | na | See [Note on missing data] | 
| 173 | Infections Present--Hepatitis C | HEPC| [ConditionInfectionPresentDuringPregnancy]|code=50711007 | na | See [Note on missing data] | 
| 196 | Maternal Morbidity--Perineal Laceration | PLAC| [ConditionPerinealLaceration]| | na | See [Note on missing data] | 
| 197 | Maternal Morbidity--Ruptured Uterus | RUT| [ConditionRupturedUterus]| | na | See [Note on missing data] | 
| 217 | Abnormal Conditions of the Newborn--Seizures | SEIZ| [ConditionSeizure]| | na | See [Note on missing data] | 
| 153 | Principal source of Payment for this delivery | PAY| [CoveragePrincipalPayerDelivery]|type | codeable | [ValueSetBirthAndFetalDeathFinancialClass]  | 
| 11 | Place Where Birth Occurred (type of place or institution) | BPLACE| [EncounterBirth]|location.physicalType | codeable | [ValueSetBirthDeliveryOccurred] | 
| 12 | Facility ID (NPI) - if available | FNPI| [EncounterBirth]|location.location.id | string |  | 
| 13 | Facility ID (State-Assigned) | SFN| [EncounterBirth]|location.location.identifier | Identifier |  | 
| 231 | Was Infant Transferred Within 24 Hours of Delivery? | ITRAN| [EncounterBirth]|hospitalization.dischargeDisposition="other-hcf" | codeable | [http://hl7.org/fhir/us/core/ValueSet/us-core-discharge-disposition]. See [Note on missing data]. Need to discuss - clarity needed for values other than 'other-hcf' | 
| 253 | Name of Facility of Birth | HOSP| [EncounterBirth]|location.location.name | string |  | 
| 303 | Facility Infant Transferred To (if transferred w/in 24 hours) | HOSPTO| [EncounterBirth]|hospitalization.destination.name | string |  | 
| 334 | Date Signed by Certifier--Year | CERTIFIED_YR| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 335 | Date Signed by Certifier--Month | CERTIFIED_MO| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 336 | Date Signed by Certifier--Day | CERTIFIED_DY| [EncounterBirth]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | 
| 125 | Mother Transferred? | TRAN| [Encounter_Maternity]|hospitalization.admitSource = "hosp-trans" | codeable | [http://hl7.org/fhir/ValueSet/encounter-admit-source], See [Note on missing data]. Need to discuss - clarity needed for values other than 'hosp-trans' | 
| 302 | Facility Mother Moved From (if transferred) | HOSPFROM| [Encounter_Maternity]|hospitalization.origin.name | string |  | 
| 185 | Characteristics of Labor & Delivery--Antibiotics | ANTB| [ObservationAntibioticsAdministeredDuringLabor]| | na | See [Note on missing data] | 
| 149 | Number of Cigarettes Smoked in 3 months prior to Pregnancy | CIGPN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=64794-1 | integer |  | 
| 150 | Number of Cigarettes Smoked in 1st 3 months | CIGFN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=87298-6 | integer |  | 
| 151 | Number of Cigarettes Smoked in 2nd 3 months | CIGSN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=87299-4 | integer |  | 
| 152 | Number of Cigarettes Smoked in  third trimester (RECOMMENDED CHANGE EFFECTIVE 2004) | CIGLN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=64795-8 | integer |  | 
| 126 | Date of First Prenatal Care Visit--Month | DOFP_MO| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 127 | Date of First Prenatal Care Visit--Day | DOFP_DY| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 128 | Date of First Prenatal Care Visit--Year | DOFP_YR| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 145 | Date of Last Live Birth--Month | MLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 146 | Date of Last Live Birth--Year | YLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 147 | Date of Last Other Pregnancy Outcome--Month | MOPO| [ObservationDateOfLastOtherPregnancyOutcome]|value | dateTime | See [PartialDatesAndTimes] | 
| 148 | Date of Last Other Pregnancy Outcome--Year | YOPO| [ObservationDateOfLastOtherPregnancyOutcome]|value | dateTime | See [PartialDatesAndTimes] | 
| 202 | Birthweight--Edit Flag | BW_BYPASS| [ObservationEditFlagBirthweight]|value | codeable | [PHVS_BirthWeightEditFlags_NCHS], See [Handling of edit flags] | 
| 204 | Obstetric Estimation of Gestation--Edit Flag | OWGEST_BYPASS| [ObservationEditFlagEstimateOfGestation]|value | codeable | [http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7567], See [Handling of edit flags]  | 
| 28 | Date of Birth (Father)--Edit Flag | FAGE_BYPASS| [ObservationEditFlagFathersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], See [Handling of edit flags] | 
| 79 | Father's Education--Edit Flag | FEDUC_BYPASS| [ObservationEditFlagFathersEducation]|value | codeable | [PHVS_EducationLevelEditFlags_NCHS], See [Handling of edit flags] | 
| 17 | Date of Birth (Mother)--Edit Flag | MAGE_BYPASS| [ObservationEditFlagMothersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], See [Handling of edit flags] | 
| 140 | Mother's Weight at Delivery--Edit Flag | DWGT_BYPASS| [ObservationEditFlagMothersDeliveryWeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags] | 
| 33 | Mother's Education--Edit Flag | MEDUC_BYPASS| [ObservationEditFlagMothersEducation]|value | codeable | [PHVS_EditFlags_NCHS], why does this not use same edit flag as father's education [PHVS_EducationLevelEditFlags_NCHS]?  See [Handling of edit flags] | 
| 136 | Mother's Height--Edit Flag | HGT_BYPASS| [ObservationEditFlagMothersHeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags]  | 
| 138 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS| [ObservationEditFlagMothersPrepregnancyWeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags] | 
| 133 | Total Number of Prenatal Care Visits--Edit Flag | NPREV_BYPASS| [ObservationEditFlagNumberPrenatalCareVisits]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags]  | 
| 167 | Risk Factors--Number Previous Cesareans--Edit Flag | NPCES_BYPASS| [ObservationEditFlagNumberPreviousCesareans]|value | codeable | [PHVS_NumberOfPreviousCesareansEditFlags_NCHS], See [Handling of edit flags]  | 
| 211 | Plurality--Edit Flag | PLUR_BYPASS| [ObservationEditFlagPlurality]|value | codeable | [PHVS_PluralityEditFlags_NCHS], See [Handling of edit flags] | 
| 192 | Method of Delivery--Fetal Presentation | PRES| [ObservationFetalPresentation]|value | codeable | [ValueSetFetalPresentations] | 
| 199 | Maternal Morbidity--Admit to Intensive Care | AINT| [ObservationICUAdmission]| | na | See [Note on missing data] | 
| 233 | Is Infant Being Breastfed at discharge? (RECOMMENDED CHANGE EFFECTIVE 2004) | BFED| [ObservationInfantBreastfedAtDischarge]|value | boolean | Discussion needed: IJE values are Y, N, U. However, encoding with Boolean does not capture Unknown | 
| 194 | Method of Delivery--Trial of Labor Attempted | TLAB| [ObservationLaborTrialAttempted]|value | boolean | Discussion needed: IJE values are Y, N, U, and X (not applicable). However, encoding with Boolean does not capture Unknown or Not Applicable | 
| 30 | Mother Married?-- At Conception, at Birth or any Time in Between | MARN| [ObservationMotherMarriedDuringPregnancy]|value | codeable | [PHVS_YesNoUnknown_CDC] | 
| 141 | Did Mother get WIC Food for Herself? | WIC| [ObservationMotherReceivedWICFood]|value | codeable | [PHVS_YesNoUnknown_CDC] | 
| 214 | Abnormal Conditions of the Newborn--Admission to NICU | NICU| [ObservationNICUAdmission]| | na | See [Note on missing data] | 
| 31 | Mother Married?--Acknowledgement of Paternity Signed | ACKN| [ObservationPaternityAcknowledgementSigned]|value | codeable | [PHVS_YesNoNotApplicable_NCHS] | 
| 321 | Social Security Number Requested for Child? | SSN_REQ| [ObservationSSNRequestedForChild]|value | boolean |  | 
| 184 | Characteristics of Labor & Delivery--Steroids | STER| [ObservationSteroidsFetalLungMaturation]| | na | See [Note on missing data] | 
| 216 | Abnormal Conditions of the Newborn--Antibiotics | ANTI| [ProcedureAntibioticSuspectedNeonatalSepsis]| | na | See [Note on missing data] | 
| 212 | Abnormal Conditions of the Newborn--Assisted Ventilation | AVEN1| [ProcedureAssistedVentilationFollowingDelivery]| | na | See [Note on missing data] | 
| 213 | Abnormal Conditions of the Newborn--Assisted Ventilation > 6 hours | AVEN6| [ProcedureAssistedVentilationMoreThanSixHours]| | na | See [Note on missing data] | 
| 182 | Characteristics of Labor & Delivery--Augmentation of Labor | AUGL| [ProcedureAugmentationOfLabor]| | na | See [Note on missing data] | 
| 195 | Maternal Morbidity--Maternal Transfusion | MTR| [ProcedureBloodTransfusion]| | na | See [Note on missing data] | 
| 189 | Characteristics of Labor & Delivery--Anesthesia | ESAN| [ProcedureEpiduralOrSpinalAnesthesia]| | na | See [Note on missing data] | 
| 193 | Method of Delivery--Route and Method of Delivery | ROUT| [ProcedureFinalRouteMethodDelivery]|code | codeable | [ValueSetDeliveryRoutes] | 
| 181 | Characteristics of Labor & Delivery--Induction of Labor | INDL| [ProcedureInductionOfLabor]| | na | See [Note on missing data] | 
| 176 | Obstetric Procedures--Successful External Cephalic Version | ECVS| [ProcedureObstetric]|code=240278000, outcome=385669000 | codeable | [ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. Discussion needed: Is ECVF always the complement of ECVS?   If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? | 
| 177 | Obstetric Procedures--Failed External Cephalic Version | ECVF| [ProcedureObstetric]|code=240278000, outcome=385671000 | codeable | [ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. Discussion needed: Is ECVF always the complement of ECVS?   If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? | 
| 215 | Abnormal Conditions of the Newborn--Surfactant Replacement | SURF| [ProcedureSurfactantReplacementTherapy]| | na | See [Note on missing data] | 
| 198 | Maternal Morbidity--Unplanned Hysterectomy | UHYS| [ProcedureUnplannedHysterectomy]| | na | See [Note on missing data] | 
{: .grid }
{% include markdown-link-references.md %}
### Fetal Death IJE Mapping

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 3 | Certificate Number | FILENO| [CompositionProviderFetalDeathReport]|extension[fetalDeathReportNumber].value | identifier | Used for Jurisdiction Report, Coded Cause of Fetal Death, and Coded Race and Ethnicity Compositions also | 
| 5 | Auxiliary State file number | AUXNO| [CompositionProviderFetalDeathReport]|extension[fetalDeathLocalFileNumber].value | identifier | Used for Jurisdiction Report also | 
| 176 | Date of Registration--Year | DOR_YR| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 177 | Date of Registration--Month | DOR_MO| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 178 | Date of Registration--Day | DOR_DY| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | 
| 208 | Coded initiating cause/condition | ICOD| [ConditionCodedInitiatingFetalDeathCauseOrCondition]|code | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 209 | Coded other significant causes or conditions- first mentioned | OCOD1| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 210 | Coded other significant causes or conditions- second mentioned | OCOD2| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 211 | Coded other significant causes or conditions- third mentioned | OCOD3| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 212 | Coded other significant causes or conditions- fourth mentioned | OCOD4| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 213 | Coded other significant causes or conditions- fifth mentioned | OCOD5| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 214 | Coded other significant causes or conditions- sixth mentioned | OCOD6| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 215 | Coded other significant causes or conditions- seventh mentioned | OCOD7| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | 
| 180 | Initiating cause/condition - Rupture of membranes prior to onset of labor | COD18a1| [ConditionFetalDeathCauseOrCondition]|code=44223004 | na |  | 
| 181 | Initiating cause/condition - Abruptio placenta | COD18a2| [ConditionFetalDeathCauseOrCondition]|code=415105001 | na |  | 
| 182 | Initiating cause/condition - Placental insufficiency | COD18a3| [ConditionFetalDeathCauseOrCondition]|code=237292005 | na |  | 
| 183 | Initiating cause/condition - Prolapsed cord | COD18a4| [ConditionFetalDeathCauseOrCondition]|code=270500004 | na |  | 
| 184 | Initiating cause/condition - Chorioamnionitis | COD18a5| [ConditionFetalDeathCauseOrCondition]|code=11612004 | na |  | 
| 185 | Initiating cause/condition - Other complications of placenta, cord, or membranes | COD18a6| [ConditionFetalDeathCauseOrCondition]|code=PHC1298, code.text | string |  | 
| 186 | Initiating cause/condition - Unknown | COD18a7| [ConditionFetalDeathCauseOrCondition]|code=UNK | na |  | 
| 187 | Initiating cause/condition - Maternal conditions/diseases literal | COD18a8| [ConditionFetalDeathCauseOrCondition]|code=PHC1301, code.text | string |  | 
| 188 | Initiating cause/condition - Other complications of placenta, cord, or membranes literal | COD18a9| [ConditionFetalDeathCauseOrCondition]|code=PHC1298, code.text | string |  | 
| 189 | Initiating cause/condition - Other obstetrical or pregnancy complications literal | COD18a10| [ConditionFetalDeathCauseOrCondition]|code=PHC1299, code.text | string |  | 
| 190 | Initiating cause/condition - Fetal anomaly literal | COD18a11| [ConditionFetalDeathCauseOrCondition]|code=702709008, code.text | string |  | 
| 191 | Initiating cause/condition - Fetal injury literal | COD18a12| [ConditionFetalDeathCauseOrCondition]|code=277489001, code.text | string |  | 
| 192 | Initiating cause/condition - Fetal infection literal | COD18a13| [ConditionFetalDeathCauseOrCondition]|code=128270001, code.text | string |  | 
| 193 | Initiating cause/condition - Other fetal conditions/disorders literal | COD18a14| [ConditionFetalDeathCauseOrCondition]|code=PHC1300, code.text | string |  | 
| 194 | Other significant causes or conditions - Rupture of membranes prior to onset of labor | COD18b1| [ConditionFetalDeathOtherCauseOrCondition]|code=44223004 | na |  | 
| 195 | Other significant causes or conditions - Abruptio placenta | COD18b2| [ConditionFetalDeathOtherCauseOrCondition]|code=415105001 | na |  | 
| 196 | Other significant causes or conditions  - Placental insufficiency | COD18b3| [ConditionFetalDeathOtherCauseOrCondition]|code=237292005 | na |  | 
| 197 | Other significant causes or conditions - Prolapsed cord | COD18b4| [ConditionFetalDeathOtherCauseOrCondition]|code=270500004 | na |  | 
| 198 | Other significant causes or conditions - Chorioamnionitis | COD18b5| [ConditionFetalDeathOtherCauseOrCondition]|code=11612004 | na |  | 
| 199 | Other significant causes or conditions - Other complications of placenta, cord, or membranes | COD18b6| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1298 | na | need to check this one - PHC1298 is 'Complications of Placenta, Cord, or Membranes: Other (Specify)' but IJE field is Y, N (not literal text) | 
| 200 | Other significant causes or conditions - Unknown | COD18b7| [ConditionFetalDeathOtherCauseOrCondition]|code=UNK | na |  | 
| 201 | Other significant causes or conditions - Maternal conditions/diseases literal | COD18b8| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1301, code.text | string |  | 
| 202 | Other significant causes or conditions - Other complications of placenta, cord, or membranes literal | COD18b9| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1298, code.text | string |  | 
| 203 | Other significant causes or conditions - Other obstetrical or pregnancy complications literal | COD18b10| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1299, code.text | string |  | 
| 204 | Other significant causes or conditions - Fetal anomaly literal | COD18b11| [ConditionFetalDeathOtherCauseOrCondition]|code=702709008, code.text | string |  | 
| 205 | Other significant causes or conditions - Fetal injury literal | COD18b12| [ConditionFetalDeathOtherCauseOrCondition]|code=277489001, code.text | string |  | 
| 206 | Other significant causes or conditions - Fetal infection literal | COD18b13| [ConditionFetalDeathOtherCauseOrCondition]|code=128270001, code.text | string |  | 
| 207 | Other significant causes or conditions - Other fetal conditions/disorders literal | COD18b14| [ConditionFetalDeathOtherCauseOrCondition]|code=PHC1300, code.text | string |  | 
| 139 | Maternal Morbidity--Ruptured Uterus | RUT| [ConditionRupturedUterus]| | na | See [Note on missing data] | 
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
| 150 | Were Autopsy or Histological Placental Examination Results Used in Determining the Cause of Fetal Death? | AUTOPF| [ObservationAutopsyHistologicalExamResultsUsed]|value | codeable | [ValueSetYesNoNotApplicable], sandbox uses boolean, BFDR IG uses codeable | 
| 103 | Number of Cigarettes Smoked in 3 months prior to Pregnancy | CIGPN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=64794-1 | integer |  | 
| 104 | Number of Cigarettes Smoked in 1st 3 months | CIGFN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=87298-6 | integer |  | 
| 105 | Number of Cigarettes Smoked in 2nd 3 months | CIGSN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=87299-4 | integer |  | 
| 106 | Number of Cigarettes Smoked in third trimester (RECOMMENDED CHANGE EFFECTIVE 2004) | CIGLN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, code=64795-8 | integer |  | 
| 80 | Date of First Prenatal Care Visit--Month | DOFP_MO| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 81 | Date of First Prenatal Care Visit--Day | DOFP_DY| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 82 | Date of First Prenatal Care Visit--Year | DOFP_YR| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | 
| 99 | Date of Last Live Birth--Month | MLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 100 | Date of Last Live Birth--Year | YLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | 
| 144 | Weight of Fetus--Edit Flag | FW_BYPASS| [ObservationEditFlagBirthweight]|value | codeable | [PHVS_BirthWeightEditFlags_NCHS], See [Handling of edit flags] | 
| 146 | Obstetric Estimation of Gestation--Edit Flag | OWGEST_BYPASS| [ObservationEditFlagEstimateOfGestation]|value | codeable | [http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7567], See [Handling of edit flags]  | 
| 28 | Date of Birth (Father)--Edit Flag | FAGE_BYPASS| [ObservationEditFlagFathersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], See [Handling of edit flags] | 
| 284 | Father's Education--Edit Flag | FEDUC_BYPASS| [ObservationEditFlagFathersEducation]|value | codeable | [PHVS_EducationLevelEditFlags_NCHS], See [Handling of edit flags] | 
| 17 | Date of Birth (Mother)--Edit Flag | MAGE_BYPASS| [ObservationEditFlagMothersDateOfBirth]|value | codeable | [PHVS_BirthdateEditFlags_NCHS], See [Handling of edit flags] | 
| 33 | Mother's Education--Edit Flag | MEDUC_BYPASS| [ObservationEditFlagMothersEducation]|value | codeable | [PHVS_EditFlags_NCHS], why does this not use same edit flag as father's education [PHVS_EducationLevelEditFlags_NCHS]?  See [Handling of edit flags] | 
| 90 | Mother's Height--Edit Flag | HGT_BYPASS| [ObservationEditFlagMothersHeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags]  | 
| 92 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS| [ObservationEditFlagMothersPrepregnancyWeight]|value | codeable | [PHVS_PregnancyReportEditFlags_NCHS], See [Handling of edit flags] | 
| 120 | Risk Factors--Number Previous Cesareans--Edit Flag | NPCES_BYPASS| [ObservationEditFlagNumberPreviousCesareans]|value | codeable | [PHVS_NumberOfPreviousCesareansEditFlags_NCHS], See [Handling of edit flags]  | 
| 155 | Plurality--Edit Flag | PLUR_BYPASS| [ObservationEditFlagPlurality]|value | codeable | [PHVS_PluralityEditFlags_NCHS], See [Handling of edit flags] | 
| 147 | Estimated time of fetal death | ETIME| [ObservationFetalDeathTimePoint]|value | codeable | [ValueSetFetalDeathTimePoints] | 
| 133 | Method of Delivery--Fetal Presentation | PRES| [ObservationFetalPresentation]|value | codeable | [ValueSetFetalPresentations] | 
| 149 | Was a Histological Placental Examination Performed? | HISTOP| [ObservationHistologicalPlacentalExamPerformed]|value | codeable | [ValueSetHistologicalPlacentalExamination] | 
| 141 | Maternal Morbidity--Admit to Intensive Care | AINT| [ObservationICUAdmission]| | na | See [Note on missing data] | 
| 135 | Method of Delivery--Trial of Labor Attempted | TLAB| [ObservationLaborTrialAttempted]|value | boolean | Discussion needed: IJE values are Y, N, U, and X (not applicable). However, encoding with Boolean does not capture Unknown or Not Applicable | 
| 95 | Did Mother get WIC Food for Herself? | WIC| [ObservationMotherReceivedWICFood]|value | codeable | [PHVS_YesNoUnknown_CDC] | 
| 134 | Method of Delivery--Route and Method of Delivery | ROUT| [ProcedureFinalRouteMethodDelivery]|code | codeable | [ValueSetDeliveryRoutes] | 
{: .grid }
{% include markdown-link-references.md %}
