Many of the BFDR data elements can be identified using the IJE (Inter-Jurisdictional Exchange) data element names (codes). The IJE codes are used for data exchange among jurisdictions and with authorized data partners, such as National Vital Statistics System (NVSS). The National Center for Health Statistics (NCHS) has implemented IJE codes for exchange of mortality data with jurisdictions via the VRDR IG; however, the use of IJE codes has not yet been implemented for birth and fetal death reporting to NCHS.

The following IJE mappings to locations in FHIR specifications are for information purposes only:
* BFDR: Vital Records Birth and Fetal Death Reporting (this IG)
* VRCPL: [Vital Records Common Profile Library]({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}})
* US CORE: [US Core Implementation Guide, 5.0.1]({{site.data.fhir.ver.hl7fhiruscore}})
* ODH: [Occupational Data for Health]({{site.data.fhir.ver.hl7fhirusodh}})
* FHIR: [extensions](http://hl7.org/fhir/extensions/extension-registry.html)

#### Specifying None of the Above and Missing Data
All of the none-of-the-above values are represented as observations with a clear code, and a value of 'None'. If the none-of-the-above observation is present in the bundle, then its complement should not be used. See [Note on missing data]

| **Observation** |  **Complements**   |
| --------------- | ------------------ |
| [ObservationNoneOfSpecifiedMaternalMorbidities] | [ProcedureBloodTransfusion], [ConditionPerinealLaceration], [ConditionRupturedUterus], [ProcedureUnplannedHysterectomy], [ObservationICUAdmission] |
| [ObservationNoneOfSpecifiedPregnancyRiskFactors] | [ConditionPrepregnancyDiabetes], [ConditionGestationalDiabetes], [ConditionPrepregnancyHypertension], [ConditionGestationalHypertension], [ConditionEclampsiaHypertension], [ObservationPreviousPretermBirth], [ProcedureInfertilityTreatment], [ProcedureArtificialInsemination], [ProcedureAssistedFertilization], [ObservationPreviousCesarean] |
| [ObservationUnknownFinalRouteMethodDelivery] | [ProcedureFinalRouteMethodDelivery] |
{: .grid }

### Fetal Death IJE Mapping

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set/Comments** | **Unique to Provider Report (P), Jurisdiction Report (J), Both (B), or Neither (N)** |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- | ---- |
| 3 | Certificate Number | FILENO| [CompositionProviderFetalDeathReport]|extension[fetalDeathReportNumber].value | identifier | Used for Jurisdiction Report, Coded Cause of Fetal Death, and Coded Race and Ethnicity Compositions also | B | 
| 5 | Auxiliary State file number | AUXNO| [CompositionProviderFetalDeathReport]|extension[fetalDeathLocalFileNumber].value | identifier | Used for Jurisdiction Report also | B | 
| 176 | Date of Registration--Year | DOR_YR| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | B | 
| 177 | Date of Registration--Month | DOR_MO| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | B | 
| 178 | Date of Registration--Day | DOR_DY| [CompositionProviderFetalDeathReport]|extension[dateReceivedByRegistrar].value | dateTime | Used for Jurisdiction Report also | B | 
| 173 | Risk Factors--Hypertension Eclampsia (added after 2004) | EHYPE| [ConditionEclampsiaHypertension]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 180 | Initiating cause/condition - Rupture of membranes prior to onset of labor | COD18a1| [ConditionFetalDeathCauseOrCondition]|code=44223004 (Premature rupture of membranes (disorder)) | na |  | B | 
| 181 | Initiating cause/condition - Abruptio placenta | COD18a2| [ConditionFetalDeathCauseOrCondition]|code=415105001 (Placental abruption (disorder)) | na |  | B | 
| 182 | Initiating cause/condition - Placental insufficiency | COD18a3| [ConditionFetalDeathCauseOrCondition]|code=237292005 (Placental insufficiency (disorder)) | na |  | B | 
| 183 | Initiating cause/condition - Prolapsed cord | COD18a4| [ConditionFetalDeathCauseOrCondition]|code=270500004 (Prolapsed cord (disorder)) | na |  | B | 
| 184 | Initiating cause/condition - Chorioamnionitis | COD18a5| [ConditionFetalDeathCauseOrCondition]|code=11612004 (Chorioamnionitis (disorder)) | na |  | B | 
| 185 | Initiating cause/condition - Other complications of placenta, cord, or membranes | COD18a6| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#membranes | na |  | B | 
| 186 | Initiating cause/condition - Unknown | COD18a7| [ConditionFetalDeathCauseOrCondition]|code=UNK | na |  | B | 
| 187 | Initiating cause/condition - Maternal conditions/diseases literal | COD18a8| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#maternalconditions, code.text | string | code.text should contain description | B | 
| 188 | Initiating cause/condition - Other complications of placenta, cord, or membranes literal | COD18a9| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#membranes, code.text | string | code.text should contain description | B | 
| 189 | Initiating cause/condition - Other obstetrical or pregnancy complications literal | COD18a10| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#obstetricalcomplications, code.text | string | code.text should contain description | B | 
| 190 | Initiating cause/condition - Fetal anomaly literal | COD18a11| [ConditionFetalDeathCauseOrCondition]|code=702709008 (Fetal Anomaly (Specify)), <br />code.text | string | code.text should contain description | B | 
| 191 | Initiating cause/condition - Fetal injury literal | COD18a12| [ConditionFetalDeathCauseOrCondition]|code=277489001 (Fetal trauma (disorder)), <br />code.text | string | specific description of fetal trauma should be provided in the code.text field | B | 
| 192 | Initiating cause/condition - Fetal infection literal | COD18a13| [ConditionFetalDeathCauseOrCondition]|code=128270001 (Infectious disorder of the fetus (disorder)), <br />code.text | string | specific description of fetal infection should be provided in the code.text field | B | 
| 193 | Initiating cause/condition - Other fetal conditions/disorders literal | COD18a14| [ConditionFetalDeathCauseOrCondition]|code=FetalDeathCauseOrConditionCS#fetalconditions, <br />code.text | string | code.text should contain description | B | 
| 194 | Other significant causes or conditions - Rupture of membranes prior to onset of labor | COD18b1| [ConditionFetalDeathOtherCauseOrCondition]|code=44223004 (Premature rupture of membranes (disorder)) | na |  | B | 
| 195 | Other significant causes or conditions - Abruptio placenta | COD18b2| [ConditionFetalDeathOtherCauseOrCondition]|code=415105001 (Placental abruption (disorder)) | na |  | B | 
| 196 | Other significant causes or conditions  - Placental insufficiency | COD18b3| [ConditionFetalDeathOtherCauseOrCondition]|code=237292005 (Placental insufficiency (disorder)) | na |  | B | 
| 197 | Other significant causes or conditions - Prolapsed cord | COD18b4| [ConditionFetalDeathOtherCauseOrCondition]|code=270500004 (Prolapsed cord (disorder)) | na |  | B | 
| 198 | Other significant causes or conditions - Chorioamnionitis | COD18b5| [ConditionFetalDeathOtherCauseOrCondition]|code=11612004 (Chorioamnionitis (disorder)) | na |  | B | 
| 199 | Other significant causes or conditions - Other complications of placenta, cord, or membranes | COD18b6| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#membranes | na |  | B | 
| 200 | Other significant causes or conditions - Unknown | COD18b7| [ConditionFetalDeathOtherCauseOrCondition]|code=UNK | na |  | B | 
| 201 | Other significant causes or conditions - Maternal conditions/diseases literal | COD18b8| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#maternalconditions, <br />code.text | string | code.text should contain description | B | 
| 202 | Other significant causes or conditions - Other complications of placenta, cord, or membranes literal | COD18b9| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#membranes, <br />code.text | string | code.text should contain description | B | 
| 203 | Other significant causes or conditions - Other obstetrical or pregnancy complications literal | COD18b10| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#obstetricalcomplications, <br />code.text | string | code.text should contain description | B | 
| 204 | Other significant causes or conditions - Fetal anomaly literal | COD18b11| [ConditionFetalDeathOtherCauseOrCondition]|code=702709008 (Fetal Anomaly (Specify)), <br />code.text | string | code.text should contain description | B | 
| 205 | Other significant causes or conditions - Fetal injury literal | COD18b12| [ConditionFetalDeathOtherCauseOrCondition]|code=277489001 (Fetal trauma (disorder)), <br />code.text | string | specific description of fetal trauma should be provided in the code.text field | B | 
| 206 | Other significant causes or conditions - Fetal infection literal | COD18b13| [ConditionFetalDeathOtherCauseOrCondition]|code=128270001 (Infectious disorder of the fetus (disorder)), <br />code.text | string | specific description of fetal infection should be provided in the code.text field | B | 
| 207 | Other significant causes or conditions - Other fetal conditions/disorders literal | COD18b14| [ConditionFetalDeathOtherCauseOrCondition]|code=FetalDeathCauseOrConditionCS#fetalconditions, <br />code.text | string | code.text should contain description | B | 
| 111 | Risk Factors--Gestational Diabetes | GDIAB| [ConditionGestationalDiabetes]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 113 | Risk Factors--Hypertension Gestational  (SEE ADDITIONAL HYPERTENSION CATEGORY IN LOCATION 573 TO REFLECT RECOMMENDED CHANGES EFFECTIVE 2004) | GHYPE| [ConditionGestationalHypertension]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 110 | Risk Factors--Prepregnancy Diabetes  (NOTE: SEE INSERTED NOTES FOR RISK FACTOR LOCATIONS 490-501 AND 573-575 TO REFLECT 2004 CHANGES) | PDIAB| [ConditionPrepregnancyDiabetes]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 112 | Risk Factors--Hypertension Prepregnancy | PHYPE| [ConditionPrepregnancyHypertension]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 139 | Maternal Morbidity--Ruptured Uterus | RUT| [ConditionRupturedUterus]| | na | See [Note on missing maternal morbidity data] | B | 
| 10 | County of Delivery | CNTYO| [Encounter_Maternity]|location.location.address.district.extension[countyCode] | integer | See [CountyCodes] | B | 
| 11 | Place Where Delivery Occurred | DPLACE| [Encounter_Maternity]|location.physicalType | codeable | [BirthDeliveryOccurredVS] | B | 
| 12 | Facility ID (NPI) - If available | FNPI| [Encounter_Maternity]|location.location.id | string |  | B | 
| 13 | Facility ID (State-Assigned) | SFN| [Encounter_Maternity]|location.location.identifier | Identifier |  | B | 
| 224 | Name of Delivery Facility | HOSP_D| [Encounter_Maternity]|location.location.name | string |  | B | 
| 225 | Place of Delivery Street number | STNUM_D| [Encounter_Maternity]|location.location.address.extension[stnum] | string |  | B | 
| 226 | Place of Delivery Pre Directional | PREDIR_D| [Encounter_Maternity]|location.location.address.extension[predir] | string |  | B | 
| 227 | Place of Delivery Street name | STNAME_D| [Encounter_Maternity]|location.location.address.extension[stname] | string |  | B | 
| 228 | Place of Delivery Street designator | STDESIG_D| [Encounter_Maternity]|location.location.address.extension[stdesig] | string |  | B | 
| 229 | Place of Delivery Post Directional | POSTDIR_D| [Encounter_Maternity]|location.location.address.extension[postdir] | string |  | B | 
| 230 | Place of Delivery Unit or Apartment Number | APTNUMB_D| [Encounter_Maternity]|location.location.address.extension[unitnum] | string |  | B | 
| 231 | Place of Delivery Street Address | ADDRESS_D| [Encounter_Maternity]|location.location.address.line | string |  | B | 
| 232 | Place of Delivery Zip code and Zip+4 | ZIPCODE_D| [Encounter_Maternity]|location.location.address.postalCode | string |  | B | 
| 233 | Place of Delivery County (literal) | CNTY_D| [Encounter_Maternity]|location.location.address.district | string |  | B | 
| 234 | Place of Delivery City/Town/Place (literal)  | CITY_D| [Encounter_Maternity]|location.location.address.city | string |  | B | 
| 235 | State, U.S. Territory or Canadian Province of Place of Delivery - literal | STATE_D| [Encounter_Maternity]|location.location.address.state (expanded from 2 letter code) | string | See [StateLiterals] | B | 
| 236 | Place of Delivery Country (literal) | COUNTRY_D| [Encounter_Maternity]|location.location.address.country (expanded from 2 letter code) | string | See [CountryLiterals] | B | 
| 339 | Facility Mother Moved From (if transferred) | HOSPFROM| [Encounter_Maternity]|hospitalization.origin.name | string |  | B | 
| 347 | Date Signed by Certifier--Year | CERTIFIED_YR| [Encounter_Maternity]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | B | 
| 348 | Date Signed by Certifier--Month | CERTIFIED_MO| [Encounter_Maternity]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | B | 
| 349 | Date Signed by Certifier--Day | CERTIFIED_DY| [Encounter_Maternity]|participant:certifier.period.start | dateTime | See [PartialDatesAndTimes] | B | 
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
| 285 | Father of Hispanic Origin?--Mexican | FETHNIC1| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicMexican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 286 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicPuertoRican].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 287 | Father of Hispanic Origin?--Cuban | FETHNIC3| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicCuban ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 288 | Father of Hispanic Origin?--Other | FETHNIC4| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicOther ].valueCoding, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicNoUnknownVS] | B | 
| 289 | Father of Hispanic Origin?--Other Literal | FETHNIC5| [ObservationInputRaceAndEthnicityVitalRecords]|component[ HispanicLiteral ].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 290 | Father's Race--White | FRACE1| [ObservationInputRaceAndEthnicityVitalRecords]|component[ White].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 291 | Father's Race--Black or African American | FRACE2| [ObservationInputRaceAndEthnicityVitalRecords]|component[ BlackOrAfricanAmerican].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 292 | Father's Race--American Indian or Alaska Native | FRACE3| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AmericanIndianOrAlaskanNative].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 293 | Father's Race--Asian Indian | FRACE4| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AsianIndian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 294 | Father's Race--Chinese | FRACE5| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Chinese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 295 | Father's Race--Filipino | FRACE6| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Filipino].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 296 | Father's Race--Japanese | FRACE7| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Japanese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 297 | Father's Race--Korean | FRACE8| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Korean].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 298 | Father's Race--Vietnamese | FRACE9| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Vietnamese].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 299 | Father's Race--Other Asian | FRACE10| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherAsian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 300 | Father's Race--Native Hawaiian | FRACE11| [ObservationInputRaceAndEthnicityVitalRecords]|component[ NativeHawaiian].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 301 | Father's Race--Guamanian or Chamorro | FRACE12| [ObservationInputRaceAndEthnicityVitalRecords]|component[ GuamanianOrChamorro].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 302 | Father's Race--Samoan | FRACE13| [ObservationInputRaceAndEthnicityVitalRecords]|component[ Samoan].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 303 | Father's Race--Other Pacific Islander | FRACE14| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherPacificIslander].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 304 | Father's Race--Other | FRACE15| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherRace].valueBoolean, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | boolean |  | B | 
| 305 | Father's Race--First American Indian or Alaska Native Literal | FRACE16| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AmericanIndianorAlaskanNativeLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 306 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17| [ObservationInputRaceAndEthnicityVitalRecords]|component[ AmericanIndianorAlaskanNativeLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 307 | Father's Race--First Other Asian Literal | FRACE18| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherAsianLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 308 | Father's Race--Second Other Asian Literal | FRACE19| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherAsianLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 309 | Father's Race--First Other Pacific Islander Literal | FRACE20| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherPacificIslandLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 310 | Father's Race--Second Other Pacific Islander Literal | FRACE21| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherPacificIslandLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 311 | Father's Race--First Other Literal | FRACE22| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherRaceLiteral1].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 312 | Father's Race--Second Other Literal | FRACE23| [ObservationInputRaceAndEthnicityVitalRecords]|component[ OtherRaceLiteral2].valueString, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | string |  | B | 
| 150 | Were Autopsy or Histological Placental Examination Results Used in Determining the Cause of Fetal Death? | AUTOPF| [ObservationAutopsyHistologicalExamResultsUsed]|value | codeable | [ValueSetYesNoNotApplicableVitalRecords], <br />sandbox uses boolean, BFDR IG uses codeable | B | 
| 148 | Was an Autopsy Performed? | AUTOP| [ObservationAutopsyPerformedIndicatorVitalRecords]|value | codeable | [ValueSetYesNoUnknownNotApplicableVitalRecords] | B | 
| 143 | Weight of Fetus | FWG| [ObservationBirthWeight]|value | quantity |  | B | 
| 144 | Weight of Fetus--Edit Flag | FW_BYPASS| [ObservationBirthWeight]|value.extension[bypassEditFlag].value | codeable | [BirthWeightEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 103 | Number of Cigarettes Smoked in 3 months prior to Pregnancy | CIGPN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=64794-1 (In the 3 months before you got pregnant, <br />how many cigarettes did you smoke on an average day) | integer |  | B | 
| 104 | Number of Cigarettes Smoked in 1st 3 months | CIGFN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=87298-6 (Cigarettes smoked per day by Mother--1st trimester) | integer |  | B | 
| 105 | Number of Cigarettes Smoked in 2nd 3 months | CIGSN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=87299-4 (Cigarettes smoked per day by Mother--2nd trimester) | integer |  | B | 
| 106 | Number of Cigarettes Smoked in third trimester (RECOMMENDED CHANGE EFFECTIVE 2004) | CIGLN| [ObservationCigaretteSmokingBeforeDuringPregnancy]|value, <br />code=64795-8 (In the last 3 months of your pregnancy, how many cigarettes did you smoke on an average day) | integer |  | B | 
| 80 | Date of First Prenatal Care Visit--Month | DOFP_MO| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 81 | Date of First Prenatal Care Visit--Day | DOFP_DY| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 82 | Date of First Prenatal Care Visit--Year | DOFP_YR| [ObservationDateOfFirstPrenatalCareVisit]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 99 | Date of Last Live Birth--Month | MLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 100 | Date of Last Live Birth--Year | YLLB| [ObservationDateOfLastLiveBirth]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 147 | Estimated time of fetal death | ETIME| [ObservationFetalDeathTimePoint]|value | codeable | [FetalDeathTimePointsVS] | B | 
| 133 | Method of Delivery--Fetal Presentation | PRES| [ObservationFetalPresentation]|value | codeable | [FetalPresentationsVS] | B | 
| 145 | Obstetric Estimation of Gestation | OWGEST| [ObservationGestationalAgeAtDelivery]|value | quantity |  | B | 
| 146 | Obstetric Estimation of Gestation--Edit Flag | OWGEST_BYPASS| [ObservationGestationalAgeAtDelivery]|value.extension[bypassEditFlag].value | codeable | [EstimateOfGestationEditFlagsVS], <br />See [Handling of edit flags]  | J | 
| 149 | Was a Histological Placental Examination Performed? | HISTOP| [ObservationHistologicalPlacentalExamPerformed]|value | codeable | [HistologicalPlacentalExaminationVS] | B | 
| 141 | Maternal Morbidity--Admit to Intensive Care | AINT| [ObservationICUAdmission]| | na | See [Note on missing maternal morbidity data] | B | 
| 135 | Method of Delivery--Trial of Labor Attempted | TLAB| [ObservationLaborTrialAttempted]|value | boolean | Discussion needed: IJE values are Y, N, U, and X (not applicable). However, encoding with Boolean does not capture Unknown or Not Applicable | B | 
| 107 | Date Last Normal Menses Began--Year | DLMP_YR| [ObservationLastMenstrualPeriod]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 108 | Date Last Normal Menses Began--Month | DLMP_MO| [ObservationLastMenstrualPeriod]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 109 | Date Last Normal Menses Began--Day | DLMP_DY| [ObservationLastMenstrualPeriod]|value | dateTime | See [PartialDatesAndTimes] | B | 
| 88 | Mother's Height--Feet | HFT| [ObservationMotherHeight]|value | quantity |  | B | 
| 89 | Mother's Height--Inches | HIN| [ObservationMotherHeight]|value | quantity |  | B | 
| 90 | Mother's Height--Edit Flag | HGT_BYPASS| [ObservationMotherHeight]|value.extension[bypassEditFlag].value | codeable | [PregnancyReportEditFlagsVS], <br />See [Handling of edit flags]  | J | 
| 91 | Mother's Prepregnancy Weight | PWGT| [ObservationMotherPrepregnancyWeight]|value | quantity |  | B | 
| 92 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS| [ObservationMotherPrepregnancyWeight]|value.extension[bypassEditFlag].value | codeable | [PregnancyReportEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 95 | Did Mother get WIC Food for Herself? | WIC| [ObservationMotherReceivedWICFood]|value | codeable | [ValueSetYesNoUnknownVitalRecords] | B | 
| 97 | Previous Live Births Now Dead | PLBD| [ObservationNumberBirthsNowDead]|value | integer |  | B | 
| 96 | Previous Live Births Now Living | PLBL| [ObservationNumberBirthsNowLiving]|value | integer |  | B | 
| 153 | Number of Fetal Deaths | FDTH| [ObservationNumberFetalDeathsThisDelivery]|value | integer |  | B | 
| 119 | Risk Factors--Number Previous Cesareans | NPCES| [ObservationNumberPreviousCesareans]|value | integer | See [Note on missing pregnancy risk factors data] | B | 
| 120 | Risk Factors--Number Previous Cesareans--Edit Flag | NPCES_BYPASS| [ObservationNumberPreviousCesareans]|value.extension[bypassEditFlag].value | codeable | [NumberPreviousCesareansEditFlagsVS], <br />See [Handling of edit flags]  | J | 
| 32 | Mother's Education | MEDUC| [ObservationParentEducationLevelVitalRecords]|value, <br />focus[ PatientMotherVitalRecords ] | codeable | [EducationLevelVS] | B | 
| 283 | Father's Education | FEDUC| [ObservationParentEducationLevelVitalRecords]|value, <br />focus[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [EducationLevelVS] | B | 
| 118 | Risk Factors--Previous Cesarean | PCES| [ObservationPreviousCesarean]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 269 | Occupation of Mother | MOM_OC_T| [odh-UsualWork]|value.text | string(40) |  | B | 
| 271 | Occupation of Father | DAD_OC_T| [odh-UsualWork]|value.text | string(40) |  | B | 
| 273 | Industry of Mother | MOM_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | B | 
| 275 | Industry of Father | DAD_IN_T| [odh-UsualWork]|component [odh-UsualIndustry].value.text | string(40) |  | B | 
| 168 | NCHS USE ONLY: Receipt date -- Year | R_YR| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | B | 
| 169 | NCHS USE ONLY: Receipt date -- Month | R_MO| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | B | 
| 170 | NCHS USE ONLY: Receipt date -- Day | R_DY| [ParametersCodingStatusValuesVitalRecords]|parameter[receiptDate].value | date |  | B | 
| 151 | Plurality | PLUR| [PatientChildVitalRecords]|extension[patient-multipleBirthTotal].valuePositiveInt | integer |  | B | 
| 171 | Mother's Reported Age | MAGER| [PatientChildVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, <br />extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=<br />Reference[ PatientMotherVitalRecords ] | quantity |  | B | 
| 1 | Date of Delivery (Fetus)--Year | FDOD_YR| [PatientDecedentFetusVitalRecords]|birthDate |  |  | B | 
| 2 | State, U.S. Territory or Canadian Province of Place of Delivery - code | DSTATE| [PatientDecedentFetusVitalRecords]|extension[patient-birthPlace].value[x].state | codeable | [StatesTerritoriesAndProvincesVS]  | B | 
| 6 | Time of Delivery | TD| [PatientDecedentFetusVitalRecords]|birthDate.extension[patient-birthTime] |  | See [PartialDatesAndTimes] | B | 
| 7 | Sex | FSEX| [PatientDecedentFetusVitalRecords]|extension[us-core-birthsex].value | codeable | [USCoreBirthSexVS](http://hl7.org/fhir/us/core/ValueSet/birthsex) | B | 
| 8 | Date of Delivery (Fetus)--Month | FDOD_MO| [PatientDecedentFetusVitalRecords]|birthDate |  |  | B | 
| 9 | Date of Delivery (Fetus)--Day | FDOD_DY| [PatientDecedentFetusVitalRecords]|birthDate |  |  | B | 
| 152 | Set Order | SORD| [PatientDecedentFetusVitalRecords]|multipleBirth[x] | integer |  | B | 
| 155 | Plurality--Edit Flag | PLUR_BYPASS| [PatientDecedentFetusVitalRecords]|multipleBirth.extension[bypassEditFlag].value | codeable | [PluralityEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 172 | Father's Reported Age | FAGER| [PatientDecedentFetusVitalRecords]|extension[parentReportedAgeAtDelivery].extension[reportedAge].value, <br />extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=<br />Reference[ RelatedPersonFatherNaturalVitalRecords ] | quantity |  | B | 
| 219 | Fetus First Name | FETFNAME| [PatientDecedentFetusVitalRecords]|name.given, <br />name.use = official | string | See [Note on Decedent Name] | B | 
| 220 | Fetus Middle Name | FETMNAME| [PatientDecedentFetusVitalRecords]|name.given, <br />name.use = official | string | See [Note on Decedent Name] | B | 
| 221 | Fetus Last Name | FETLNAME| [PatientDecedentFetusVitalRecords]|name.family, name.use = official. (absence is equivalent to ‘UNKNOWN’.) | string  | See [Note on Decedent Name] | B | 
| 222 | Fetus Surname Suffix | SUFFIX| [PatientDecedentFetusVitalRecords]|name.suffix, <br />name.use = official | string |  | B | 
| 14 | Date of Birth (Mother)--Year | MDOB_YR| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | B | 
| 15 | Date of Birth (Mother)--Month | MDOB_MO| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | B | 
| 16 | Date of Birth (Mother)--Day | MDOB_DY| [PatientMotherVitalRecords]|birthDate | date | See [PartialDatesAndTimes] | B | 
| 17 | Date of Birth (Mother)--Edit Flag | MAGE_BYPASS| [PatientMotherVitalRecords]|birthDate.extension[bypassEditFlag].value | codeable | [MothersDateOfBirthEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 18 | State, U.S. Territory or Canadian Province of Birth (Mother) - code | BPLACEC_ST_TER| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesAndProvincesVS] | B | 
| 19 | Mother's Birthplace--Country | BPLACEC_CNT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country  | string | [ResidenceCountryVS] | B | 
| 20 | Residence of Mother--City/Town | CITYC| [PatientMotherVitalRecords]|address.city.extension[ cityCode ] | integer | See [CityCodes] | B | 
| 21 | Residence of Mother--County | COUNTYC| [PatientMotherVitalRecords]|address.district.extension[countyCode] | integer | See [CountyCodes] | B | 
| 22 | State, U.S. Territory or Canadian Province of Residence (Mother) - code | STATEC| [PatientMotherVitalRecords]|address.state | string | [StatesTerritoriesAndProvincesVS] | B | 
| 23 | Residence of Mother--Country | COUNTRYC| [PatientMotherVitalRecords]|address.country | string | [ResidenceCountryVS] | B | 
| 24 | Residence of Mother--Inside City/Town Limits | LIMITS| [PatientMotherVitalRecords]|address.extension[ withinCityLimitsIndicator ].value | codeable | [ValueSetYesNoUnknownVitalRecords] | B | 
| 239 | Mother's Legal First Name | MOMFNAME| [PatientMotherVitalRecords]|name.given, <br />name.use = official | string |  | B | 
| 240 | Mother's Legal Middle Name | MOMMNAME| [PatientMotherVitalRecords]|name.given, <br />name.use = official  | string |  | B | 
| 241 | Mother's Legal Last Name | MOMLNAME| [PatientMotherVitalRecords]|name.family, <br />name.use = official | string |  | B | 
| 242 | Mother's Legal Surname Suffix | MOMSUFFIX| [PatientMotherVitalRecords]|name.suffix, <br />name.use = official  | string |  | B | 
| 243 | Mother's First Maiden Name | MOMFMNME| [PatientMotherVitalRecords]|name.given, <br />name.use = maiden | string |  | B | 
| 244 | Mother's Middle Maiden Name | MOMMMID| [PatientMotherVitalRecords]|name.given, <br />name.use = maiden | string |  | B | 
| 245 | Mother's Last Maiden Name | MOMMAIDN| [PatientMotherVitalRecords]|name.family, <br />name.use = maiden | string |  | B | 
| 246 | Mother's Maiden Surname Suffix | MOMMSUFFIX| [PatientMotherVitalRecords]|name.suffix, <br />name.use = maiden | string |  | B | 
| 247 | Mother's Residence Street number | STNUM| [PatientMotherVitalRecords]|address.extension[stnum] | string |  | B | 
| 248 | Mother's Residence Pre Directional | PREDIR| [PatientMotherVitalRecords]|address.extension[predir] | string |  | B | 
| 249 | Mother's Residence Street name | STNAME| [PatientMotherVitalRecords]|address.extension[stname] | string |  | B | 
| 250 | Mother's Residence Street designator | STDESIG| [PatientMotherVitalRecords]|address.extension[stdesig] | string |  | B | 
| 251 | Mother's Residence Post Directional | POSTDIR| [PatientMotherVitalRecords]|address.extension[postdir] | string |  | B | 
| 252 | Mother's Residence Unit or Apartment Number | APTNUMB| [PatientMotherVitalRecords]|address.extension[unitnum] | string |  | B | 
| 253 | Mother's Residence Street Address | ADDRESS| [PatientMotherVitalRecords]|address.line | string |  | B | 
| 254 | Mother's Residence Zip code and Zip+4 | ZIPCODE| [PatientMotherVitalRecords]|address.postalCode | string |  | B | 
| 255 | Mother's Residence County (literal) | COUNTYTXT| [PatientMotherVitalRecords]|address.district | string |  | B | 
| 256 | Mother's Residence City/Town/Place (literal)  | CITYTXT| [PatientMotherVitalRecords]|address.city | string |  | B | 
| 257 | State, U.S. Territory or Canadian Province of Residence (Mother) - literal | STATETXT| [PatientMotherVitalRecords]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | B | 
| 258 | Mother's Residence Country (literal) | CNTRYTXT| [PatientMotherVitalRecords]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | B | 
| 265 | Mother's Social Security Number | MOM_SSN| [PatientMotherVitalRecords]|identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”SS”  | string |  | B | 
| 279 | State, U.S. Territory or Canadian Province of Birth (Mother) - literal | MBPLACE_ST_TER_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].state | string | See [StateLiterals] | B | 
| 280 | Mother's Country of Birth (Literal) | MBPLACE_CNTRY_TXT| [PatientMotherVitalRecords]|extension[patient-birthPlace].value[x].country (expanded from 2 letter code) | string | See [CountryLiterals] | B | 
| 78 | Attendant | ATTEND| [PractitionerVitalRecords]|qualification.code | codeable | [BirthAttendantTitlesVS] | B | 
| 340 | Attendant's Name | ATTEND_NAME| [PractitionerVitalRecords]|name.text | string |  | B | 
| 341 | Attendant's NPI | ATTEND_NPI| [PractitionerVitalRecords]|identifier:NPI | string |  | B | 
| 342 | Attendant ("Other" specified text) | ATTEND_OTH_TXT| [PractitionerVitalRecords]|qualification.code.text | string | code.text should contain description | B | 
| 174 | Risk Factors--Infertility: Fertility Enhancing Drugs (added after 2004) | INFT_DRG| [ProcedureArtificialInsemination]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 175 | Risk Factors--Infertility: Asst. Rep. Technology (added after 2004) | INFT_ART| [ProcedureAssistedFertilization]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 134 | Method of Delivery--Route and Method of Delivery | ROUT| [ProcedureFinalRouteMethodDelivery]|code | codeable | [DeliveryRoutesVS], See [Note on missing method of delivery data] | B | 
| 117 | Risk Factors--Infertility Treatment  (SEE ADDITIONAL SUBCATEGORIES IN LOCATIONS 574-575) | INFT| [ProcedureInfertilityTreatment]| | na | See [Note on missing pregnancy risk factors data] | B | 
| 28 | Date of Birth (Father)--Edit Flag | FAGE_BYPASS| [RelatedPersonFatherVitalRecords]|birthDate.extension[bypassEditFlag].value | codeable | [MothersDateOfBirthEditFlagsVS], <br />See [Handling of edit flags] | J | 
| 354 | Blank for One-Byte Field 1 | PLACE1_1| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_1].value | string(1) |  | B | 
| 355 | Blank for One-Byte Field 2 | PLACE1_2| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_2].value | string(1) |  | B | 
| 356 | Blank for One-Byte Field 3 | PLACE1_3| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_3].value | string(1) |  | B | 
| 357 | Blank for One-Byte Field 4 | PLACE1_4| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_4].value | string(1) |  | B | 
| 358 | Blank for One-Byte Field 5 | PLACE1_5| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_5].value | string(1) |  | B | 
| 359 | Blank for One-Byte Field 6 | PLACE1_6| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_6].value | string(1) |  | B | 
| 360 | Blank for Eight-Byte Field 1 | PLACE8_1| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue8_1].value | string(8) |  | B | 
| 361 | Blank for Eight-Byte Field 2 | PLACE8_2| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue8_2].value | string(8) |  | B | 
| 362 | Blank for Eight-Byte Field 3 | PLACE8_3| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue8_3].value | string(8) |  | B | 
| 363 | Blank for Twenty-Byte Field | PLACE20| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue20].value | string(20) |  | B | 
{: .grid }
#### Coded Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set/Comments** | **Unique to Provider Report (P), Jurisdiction Report (J), Both (B), or Neither (N)** |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- | ---- |
| 208 | Coded initiating cause/condition | ICOD| [ConditionCodedInitiatingFetalDeathCauseOrCondition]|code | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | N | 
| 209 | Coded other significant causes or conditions- first mentioned | OCOD1| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | N | 
| 210 | Coded other significant causes or conditions- second mentioned | OCOD2| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | N | 
| 211 | Coded other significant causes or conditions- third mentioned | OCOD3| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | N | 
| 212 | Coded other significant causes or conditions- fourth mentioned | OCOD4| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | N | 
| 213 | Coded other significant causes or conditions- fifth mentioned | OCOD5| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | N | 
| 214 | Coded other significant causes or conditions- sixth mentioned | OCOD6| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | N | 
| 215 | Coded other significant causes or conditions- seventh mentioned | OCOD7| [ConditionCodedOtherFetalDeathCauseOrCondition]|code  | codeable | [https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7933] | N | 
| 62 | <nobr>Mother's Race Tabulation Variable 1E</nobr> | MRACE1E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstEditedCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [RaceCodeVS] | N | 
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
| 313 | Father's Race Tabulation Variable 1E | FRACE1E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 314 | Father's Race Tabulation Variable 2E | FRACE2E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 315 | Father's Race Tabulation Variable 3E | FRACE3E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[ThirdEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 316 | Father's Race Tabulation Variable 4E | FRACE4E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FourthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 317 | Father's Race Tabulation Variable 5E | FRACE5E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FifthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 318 | Father's Race Tabulation Variable 6E | FRACE6E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SixthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 319 | Father's Race Tabulation Variable 7E | FRACE7E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SeventhEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 320 | Father's Race Tabulation Variable 8E | FRACE8E| [ObservationCodedRaceAndEthnicityVitalRecords]|component[EighthEditedCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 321 | Father's Race Tabulation Variable 16C | FRACE16C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 322 | Father's Race Tabulation Variable 17C | FRACE17C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondAmericanIndianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 323 | Father's Race Tabulation Variable 18C | FRACE18C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 324 | Father's Race Tabulation Variable 19C | FRACE19C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondOtherAsianCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 325 | Father's Race Tabulation Variable 20C | FRACE20C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 326 | Father's Race Tabulation Variable 21C | FRACE21C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondOtherPacificIslanderCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 327 | Father's Race Tabulation Variable 22C | FRACE22C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[FirstOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 328 | Father's Race Tabulation Variable 23C | FRACE23C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[SecondOtherRaceCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [RaceCodeVS] | N | 
| 329 | Mother's Hispanic Code for Literal | METHNIC5C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[HispanicCodeForLiteral].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | N | 
| 330 | Mother's Edited Hispanic Origin Code | METHNICE| [ObservationCodedRaceAndEthnicityVitalRecords]|component[HispanicCode].value, <br />subject=Reference[ PatientMotherVitalRecords ] | codeable | [HispanicOriginVS] | N | 
| 332 | Father's Hispanic Code for Literal | FETHNIC5C| [ObservationCodedRaceAndEthnicityVitalRecords]|component[HispanicCodeForLiteral].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | N | 
| 333 | Father's Edited Hispanic Origin Code | FETHNICE| [ObservationCodedRaceAndEthnicityVitalRecords]|component[HispanicCode].value, <br />subject=Reference[ RelatedPersonFatherNaturalVitalRecords ] | codeable | [HispanicOriginVS] | N | 
{: .grid }
#### Not Implemented Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set/Comments** | **Unique to Provider Report (P), Jurisdiction Report (J), Both (B), or Neither (N)** |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- | ---- |
| 4 | Void flag | VOID| <nobr>[not implemented]</nobr>| |  |  | - | 
| 29 | Mother Married?--Ever(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MARE| [not implemented]| |  |  | - | 
| 30 | Mother Married?-- At Conception, at Delivery or any Time in Between(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MARN| [not implemented]| |  |  | - | 
| 31 | FILLER | *NO IJE MAPPING*| [not implemented]| |  |  | - | 
| 79 | Mother Transferred?(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | TRAN| [not implemented]|Encounter-maternity.hospitalization.admitSource (Y if present, N if not present) |  |  | - | 
| 83 | Date of Last Prenatal Care Visit--Month(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_MO| [not implemented]| |  |  | - | 
| 84 | Date of Last Prenatal Care Visit--Day(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_DY| [not implemented]| |  |  | - | 
| 85 | Date of Last Prenatal Care Visit--Year(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOLP_YR| [not implemented]| |  |  | - | 
| 86 | Total Number of Prenatal Care Visits(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | NPREV| [not implemented]| |  |  | - | 
| 87 | Total Number of Prenatal Care Visits--Edit Flag(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | NPREV_BYPASS| [not implemented]| |  |  | - | 
| 93 | Mother's Weight at Delivery(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DWGT| [not implemented]| |  |  | - | 
| 94 | Mother's Weight at Delivery--Edit Flag(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DWGT_BYPASS| [not implemented]| |  |  | - | 
| 98 | Previous Other Pregnancy Outcomes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | POPO| [not implemented]| |  |  | - | 
| 101 | Date of Last Other Pregnancy Outcome--Month(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MOPO| [not implemented]| |  |  | - | 
| 102 | Date of Last Other Pregnancy Outcome--Year(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | YOPO| [not implemented]| |  |  | - | 
| 114 | Risk Factors--Previous Preterm Births(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PPB| [not implemented]| |  |  | - | 
| 115 | Risk Factors--Poor Pregnancy Outcomes(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PPO| [not implemented]| |  |  | - | 
| 116 | Risk Factors--Vaginal Bleeding  (RECOMMENDED DELETION EFFECTIVE 2004)  (NCHS DELETED THIS ITEM EFFECTIVE 2011) | VB| [not implemented]| |  |  | - | 
| 121 | Infections Present--Gonorrhea(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | GON| [not implemented]| |  |  | - | 
| 122 | Infections Present--Syphilis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | SYPH| [not implemented]| |  |  | - | 
| 123 | Infections Present--Herpes Simplex (HSV)  (RECOMMENDED DELETION EFFECTIVE 2004) (NCHS DELETED THIS ITEM EFFECTIVE 2011) | HSV| [not implemented]| |  |  | - | 
| 124 | Infections Present--Chlamydia(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CHAM| [not implemented]| |  |  | - | 
| 125 | Infections Present--Listeria(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | LM| [not implemented]| |  |  | - | 
| 126 | Infections Present--Group B streptococcus(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | GBS| [not implemented]| |  |  | - | 
| 127 | Infections Present--Cytomeglovirus(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CMV| [not implemented]| |  |  | - | 
| 128 | Infections Present--Parvo virus(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | B19| [not implemented]| |  |  | - | 
| 129 | Infections Present--Toxoplasmosis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | TOXO| [not implemented]| |  |  | - | 
| 130 | Infections Present--Other(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | OTHERI| [not implemented]| |  |  | - | 
| 131 | Method of Delivery--Attempted Forceps (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTF| [not implemented]| |  |  | - | 
| 132 | Method of Delivery--Attempted Vacuum (NCHS DELETED THIS ITEM EFFECTIVE 2011) | ATTV| [not implemented]| |  |  | - | 
| 136 | Method of Delivery--Hysterotomy/Hysterectomy(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | HYST| [not implemented]| |  |  | - | 
| 137 | Maternal Morbidity--Maternal Transfusion(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MTR| [not implemented]| |  |  | - | 
| 138 | Maternal Morbidity--Perineal Laceration(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | PLAC| [not implemented]| |  |  | - | 
| 140 | Maternal Morbidity--Unplanned Hysterectomy(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | UHYS| [not implemented]| |  |  | - | 
| 142 | Maternal Morbidity--Unplanned Operation(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | UOPR| [not implemented]| |  |  | - | 
| 154 | Matching Number | MATCH| [not implemented]| |  |  | - | 
| 156 | Congenital Anomalies of the Fetus--Anencephaly(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | ANEN| [not implemented]| |  |  | - | 
| 157 | Congenital Anomalies of the Fetus--Meningomyelocele/Spina Bifida(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | MNSB| [not implemented]| |  |  | - | 
| 158 | Congenital Anomalies of the Fetus--Cyanotic congenital heart disease(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CCHD| [not implemented]| |  |  | - | 
| 159 | Congenital Anomalies of the Fetus--Congenital diaphragmatic hernia(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CDH| [not implemented]| |  |  | - | 
| 160 | Congenital Anomalies of the Fetus--Omphalocele(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | OMPH| [not implemented]| |  |  | - | 
| 161 | Congenital Anomalies of the Fetus--Gastroschisis(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | GAST| [not implemented]| |  |  | - | 
| 162 | Congenital Anomalies of the Fetus--Limb Reduction Defect(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | LIMB| [not implemented]| |  |  | - | 
| 163 | Congenital Anomalies of the Fetus--Cleft Lip with or without Cleft Palate(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CL| [not implemented]| |  |  | - | 
| 164 | Congenital Anomalies of the Fetus--Cleft Palate Alone(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CP| [not implemented]| |  |  | - | 
| 165 | Congenital Anomalies of the Fetus--Down Syndrome(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | DOWT| [not implemented]| |  |  | - | 
| 166 | Congenital Anomalies of the Fetus--Suspected Chromosomal disorder(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | CDIT| [not implemented]| |  |  | - | 
| 167 | Congenital Anomalies of the Fetus--Hypospadias(NCHS DELETED THIS ITEM EFFECTIVE 2014/2015) | HYPO| [not implemented]| |  |  | - | 
| 179 | FILLER | *NO IJE MAPPING*| [not implemented]| |  |  | - | 
| 216 | Infections Present--Genital Herpes (Subcategory in position 504) | HSV1| [not implemented]| |  |  | - | 
| 217 | Infections Present--HIV | HIV| [not implemented]| |  |  | - | 
| 218 | Alcohol Used? | ALCOHOL| [not implemented]| |  |  | - | 
| 223 | Fetus Legal Name--Alias | ALIAS| [not implemented]| |  |  | - | 
| 237 | Place of Delivery Longitude | LONG_D| [not implemented]| |  |  | - | 
| 238 | Place of Delivery Latitude | LAT_D| [not implemented]| |  |  | - | 
| 259 | Mother's Residence Longitude | LONG| [not implemented]| |  |  | - | 
| 260 | Mother's Residence Latitude | LAT| [not implemented]| |  |  | - | 
| 267 | Mother's Age (Calculated) | MAGE_CALC| [not implemented]| |  |  | - | 
| 268 | Father's Age (Calculated) | FAGE_CALC| [not implemented]| |  |  | - | 
| 270 | Occupation of Mother (coded) | MOM_OC_C| [not implemented]| |  |  | - | 
| 272 | Occupation of Father (coded) | DAD_OC_C| [not implemented]| |  |  | - | 
| 274 | Industry of Mother (coded) | MOM_IN_C| [not implemented]| |  |  | - | 
| 276 | Industry of Father (coded) | DAD_IN_C| [not implemented]| |  |  | - | 
| 331 | Mother's Bridged Race - NCHS Code | MRACEBG_C| [not implemented]| |  |  | - | 
| 334 | Father's Bridged Race - NCHS Code | FRACEBG_C| [not implemented]| |  |  | - | 
| 335 | Mother's Hispanic Origin - Specify | METHNIC_T| [not implemented]| |  |  | - | 
| 336 | Mother's Race - Specify | MRACE_T| [not implemented]| |  |  | - | 
| 337 | Father's Hispanic Origin - Specify | FETHNIC_T| [not implemented]| |  |  | - | 
| 338 | Father's Race - Specify | FRACE_T| [not implemented]| |  |  | - | 
| 343 | Informant's First Name | INFORMFST| [not implemented]| |  |  | - | 
| 344 | Informant's Middle Name | INFORMMID| [not implemented]| |  |  | - | 
| 345 | Informant's Last Name | INFORMLST| [not implemented]| |  |  | - | 
| 346 | Informant's Relationship to Fetus | INFORMRELATE| [not implemented]| |  |  | - | 
| 350 | Date Filed by Registrar--Year | REGISTER_YR| [not implemented]| |  |  | - | 
| 351 | Date Filed by Registrar--Month | REGISTER_MO| [not implemented]| |  |  | - | 
| 352 | Date Filed by Registrar--Day | REGISTER_DY| [not implemented]| |  |  | - | 
| 353 | Replacement (amended) Record | REPLACE (*deprecated*)| [not implemented]|Deprecated see [VRFM](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/message.html#successful-death-record-submission ) |  |  | - | 
| 364 | Blank for future expansion | BLANK| [not implemented]| |  |  | - | 
| 365 | Blank for Jurisdictional Use Only | BLANK2| [not implemented]| |  |  | - | 
{: .grid }
{% include markdown-link-references.md %}
