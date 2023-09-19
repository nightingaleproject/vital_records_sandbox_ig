Instance: composition-jurisdiction-live-birth-babyg-quinn-new
InstanceOf: CompositionJurisdictionLiveBirthReportNew
Title: "Composition - Jurisdiction Live Birth Report - BabyG Quinn"
Description: "Composition - Jurisdiction Live Birth Report: BabyG Quinn example"
Usage: #example
* extension[Extension-live-birth-certificate-number]
  * valueIdentifier
    * type = $v2-0203#BCT
    * value = "15075"
* extension[Extension-live-birth-local-file-number]
  * valueIdentifier
    * type = $v2-0203#BCFN
    * value = "4444-55555"
* extension[Extension-date-filed-by-registrar]
  * valueDateTime = "2019-02-12"
* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27df"
* status = #final
* type = $loinc#92011-6 "Jurisdiction live birth report Document"
* subject
  * reference = "Patient/patient-child-babyg-quinn-common"
  * display = "Patient - Child (Baby G Quinn)"
* encounter
  * extension[Extension-encounter-maternity-reference]
    * valueReference.reference = "Encounter/encounter-maternity-jada-ann-quinn"
  * reference = "Encounter/encounter-birth-babyg-quinn"
  * display = "Encounter - Birth (Baby G Quinn)"
* date = "2019-02-12"
* author
  * reference = "Organization/organization-jurisdictional-vital-records-office"
  * display = "Jurisdictional Vital Records Office"
* title = "Jurisdiction live birth report Document"
* section[motherPrenatal]
  // * title = "Mother (prenatal) Section on the Live Birth Certificate"
  // * code = $loinc#57073-9 "Prenatal records"
  * focus
    * reference = "Patient/patient-mother-jada-ann-quinn-common"
    * display = "Patient - Mother (Jada Ann Quinn)"
  * entry[0]
    * reference = "Observation/observation-planned-to-deliver-at-home-babyg-quinn"
    * display = "Observation - Planned to Deliver at Home (Jada Ann Quinn)"
  * entry[plannedToDeliverAtHome]
    * reference = "Observation/observation-date-of-first-prenatal-care-visit-jada-ann-quinn"
    * display = "Observation - Date of First Prenantal Care Visit (Jada Ann Quinn)"
  * entry[firstPrenatalCareVisit]
    * reference = "Observation/observation-number-prenatal-visits-jada-ann-quinn-new"
    * display = "Observation - Number Prenatal Visits (Jada Ann Quinn)"
  * entry[dateLastNormalMenses]
    * reference = "Observation/observation-last-menstrual-period-jada-ann-quinn-new"
    * display = "Observation - Last Menstrual Period (Jada Ann Quinn)"
  * entry[numberNowLiving]
    * reference = "Observation/observation-number-births-now-living-jada-ann-quinn-new"
    * display = "Observation - Number Births Now Living (Jada Ann Quinn)"
  * entry[numberNowDead]
    * reference = "Observation/observation-number-births-now-dead-jada-ann-quinn-new"
    * display = "Observation - Number Births Now Dead (Jada Ann Quinn)"
  * entry[dateLastLiveBirth]
    * reference = "Observation/observation-date-of-last-live-birth-jada-ann-quinn"
    * display = "Observation - Date of Last Live Birth (Jada Ann Quinn)"
  * entry[numberOtherOutcomes]
    * reference = "Observation/observation-number-other-pregnancy-outcomes-jada-ann-quinn-new"
    * display = "Observation - Number Other Pregnancy Outcomes (Jada Ann Quinn)"
  * entry[dateLastOtherOutcome]
    * reference = "Observation/observation-date-of-last-other-pregnancy-outcome-jada-ann-quinn"
    * display = "Observation - Date of Last Other Pregnancy Outcome (Jada Ann Quinn)"
  * entry[principalSourceOfPayment]
    * reference = "Coverage/coverage-principal-payer-for-delivery-jada-ann-quinn"
    * display = "Coverage - Principal Payer for Delivery (Jada Ann Quinn)"
  * entry[mothersWeightAtDelivery]
    * reference = "Observation/observation-mother-delivery-weight-jada-ann-quinn-new"
    * display = "Observation - Mother Delivery Weight (Jada Ann Quinn)"
  * entry[mothersHeight]
    * reference = "Observation/observation-mother-height-jada-ann-quinn-new"
    * display = "Observation - Observation - Mother Height (Jada Ann Quinn)"
  * entry[mothersPrepregnancyWeight]
    * reference = "Observation/observation-mother-prepregnancy-weight-jada-ann-quinn-new"
    * display = "Observation - Mother Prepregnancy Weight (Jada Ann Quinn)"
  * entry[motherReceivedWICFood]
    * reference = "Observation/observation-mother-received-wic-food-jada-ann-quinn"
    * display = "Observation - Mother Received WIC Food (Jada Ann Quinn)"
  * entry[cigaretteSmokingBeforeDuringPregnancy]
    * reference = "Observation/observation-cig-smoking-pregnancy-1-jada-ann-quinn"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (3 months prior: Jada Ann Quinn)"
  * entry[cigaretteSmokingBeforeDuringPregnancy]
    * reference = "Observation/observation-cig-smoking-pregnancy-2-jada-ann-quinn"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (first 3 months: Jada Ann Quinn)"
  * entry[cigaretteSmokingBeforeDuringPregnancy]
    * reference = "Observation/observation-cig-smoking-pregnancy-3-jada-ann-quinn"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (second 3 months: Jada Ann Quinn)"
  * entry[cigaretteSmokingBeforeDuringPregnancy]
    * reference = "Observation/observation-cig-smoking-pregnancy-4-jada-ann-quinn"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (last 3 months: Jada Ann Quinn)"
* section[medicalHealthInformation]
  // * title = "Medical Health Information Section"
  // * code = $loinc#55752-0 "Clinical information"
  * focus
    * reference = "Patient/patient-mother-jada-ann-quinn-common"
    * display = "Patient - Mother (Jada Ann Quinn)"
  // removing because there is no pregnancy risk factor example for baby quinn 
  // based on this profile http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-pregnancy-risk-factor.html
  //* entry[pregnancyRiskFactors]
    // this example was previously unreferenced
    //* reference = "Observation/observation-pregnancy-risk-factor-jada-ann-quinn-4"
    // this example does not exist in the published or unpublished version, but is referenced in the published version
    // * reference : "Observation/observation-pregnancy-risk-factor-jada-ann-quinn-1"
    // this is from the unpublished version
    // * reference = "Condition/condition-gestational-hypertension-jada-ann-quinn"
    //* display = "Condition - Gestational Hypertension (Jada Ann Quinn)"
  * entry[numberPreviousCesareans]
    * reference = "Observation/observation-number-previous-cesareans-jada-ann-quinn-new"
    * display = "Observation - Number Previous Cesareans (Jada Ann Quinn)"
  * entry[infectionsDuringPregnancy]
    * reference = "Condition/condition-infection-present-during-pregnancy-jada-ann-quinn"
    * display = "Condition - Infection Present During Pregnancy (Jada Ann Quinn)"
  * entry[obstetricProcedures]
    * reference = "Procedure/procedure-obstetric-procedure-jada-ann-quinn"
    * display = "Procedure - Obstetric Procedure (Jada Ann Quinn)"
  * entry[characteristicsLaborDelivery]
    * reference = "Condition/condition-chorioamnionitis-jada-ann-quinn"
    * display = "Condition - Characteristic of Labor and Delivery (Jada Ann Quinn: Chorioamnionitis)"
  * entry[characteristicsLaborDelivery]
    * reference = "Procedure/procedure-induction-of-labor-jada-ann-quinn"
    * display = "Procedure - Characteristic of Labor and Delivery (Jada Ann Quinn: Induction of Labor)"
  * entry[fetalPresentation]
    * reference = "Observation/observation-fetal-presentation-babyg-quinn"
    * display = "Observation - Fetal Presentation (Baby G Quinn)"
  * entry[finalRouteMethodDelivery]
    * reference = "Procedure/procedure-final-route-method-delivery-babyg-quinn"
    * display = "Procedure - Final Route and Method of Delivery (Baby G Quinn)"
  * entry[maternalMorbidity]
    * reference = "Condition/condition-ruptured-uterus-jada-ann-quinn"
    * display = "Condition - Maternal Morbidity - Ruptured Uterus (Jada Ann Quinn)"
* section[newbornInformation]
  // * title = "Newborn section on the Live Birth Certificate"
  // * code = $loinc#57075-4 "Newborn delivery information"
  * entry[birthWeight]
    * reference = "Observation/observation-birth-weight-babyg-quinn-new"
    * display = "Observation - Birth Weight (Baby G Quinn)"
  * entry[gestationalAgeAtDelivery]
    * reference = "Observation/observation-gestational-age-at-delivery-babyg-quinn-new"
    * display = "Observation - Gestational Age at Delivery (Baby G Quinn)"
  * entry[APGARScore]
    * reference = "Observation/observation-apgar-score-babyg-quinn-1-min-new"
    * display = "Observation - Apgar Score (BabyG Quinn: 1 min)"
  * entry[APGARScore]
    * reference = "Observation/observation-apgar-score-babyg-quinn-5-min-new"
    * display = "Observation - Apgar Score (BabyG Quinn: 5 min)"
  * entry[numberLiveBirthsThisDelivery]
    * reference = "Observation/observation-number-live-births-this-delivery-jada-ann-quinn-new"
    * display = "Observation - Number Live Births This Delivery - Jada Ann Quinn"
  // * entry[+]
  //   * reference = "Observation/observation-plurality-jada-ann-quinn"
  //   * display = "Observation - Plurality (Jada Ann Quinn)"
  * entry[congenitalAnomaliesNewborn]
    * reference = "Condition/condition-congenital-anomaly-of-newborn-babyg-quinn"
    * display = "Condition - Congenital Anomaly of Newborn (BabyG Quinn) 1"
  * entry[congenitalAnomaliesNewborn]
    * reference = "Condition/condition-congenital-anomaly-of-newborn-babyg-quinn-2"
    * display = "Condition - Congenital Anomaly of Newborn (Baby G Quinn) 2"
  * entry[infantLiving]
    * reference = "Observation/observation-infant-living-babyg-quinn-new"
    * display = "Observation - Infant Living (Baby G Quinn)"
  * entry[infantBreastfedAtDischarge]
    * reference = "Observation/observation-infant-breastfed-at-discharge-babyg-quinn"
    * display = "Observation - Infant Breastfed at Discharge (Baby G Quinn)"
* section[motherInformation]
  // * title = "Mother's Information Section"
  // * code = $loinc#92014-0 "Mother's administrative information"
  * focus
    * reference = "Patient/patient-mother-jada-ann-quinn-common"
    * display = "Patient - Mother (Jada Ann Quinn)"
  * entry[marriedDuringPregnancy]
    * reference = "Observation/observation-mother-married-during-pregnancy-jada-ann-quinn"
    * display = "Observation - Mother Married During Pregnancy (Jada Ann Quinn)"
  * entry[mothersEducation]
    * reference = "Observation/observation-parent-education-level-jada-ann-quinn"
    * display = "Observation - Parent Education Level (Jada Ann Quinn)"
  * entry[ssnRequestedForChild]
    * reference = "Observation/observation-ssn-requested-for-child-babyg-quinn"
    * display = "Observation - SSN Requested for Child (Jada Ann Quinn)"
* section[fatherInformation]
  // * title = "Father's Information Section"
  // * code = $loinc#92013-2 "Father's Administrative Information"
  * focus
    * reference = "RelatedPerson/relatedperson-father-natural-james-brandon-quinn"
    * display = "RelatedPerson - Father (James Brandon Quinn)"
  * entry[paternityAcknowledgementSigned]
    * reference = "Observation/observation-paternity-acknowledgement-signed-james-quinn"
    * display = "Observation - Paternity Acknowledgement Signed (James Brandon Quinn)"
  * entry[fathersEducation]
    * reference = "Observation/observation-parent-education-level-james-quinn"
    * display = "Observation - Parent Education Level (James Brandon Quinn)"
* section[EditFlags]
  // * title = "Edit Flags Section"
  // * code = $loinc#92012-4 "Edit flags section"
  * entry[editFlagBirthweight]
    * reference = "Observation/observation-edit-birth-weight-babyg-quinn"
    * display = "Observation - Edit flag birthweight"
  * entry[editFlagEstimateOfGestation]
    * reference = "Observation/observation-edit-flag-estimate-of-gestation-example"
    * display = "Observation - Edit flag estimate of gestation"
  * entry[editFlagFathersDateOfBirth]
    * reference = "Observation/observation-edit-flag-fathers-date-of-birth-example"
    * display = "Observation - Edit flag father's date of birth"
  * entry[editFlagFathersEducation]
    * reference = "Observation/observation-edit-flag-fathers-education-example"
    * display = "Observation - Edit flag father's education"
  * entry[editFlagMothersDateOfBirth]
    * reference = "Observation/observation-edit-flag-mothers-date-of-birth-example"
    * display = "Observation - Edit flag mother's date of birth"
  * entry[editFlagMothersDeliveryWeight]
    * reference = "Observation/observation-edit-flag-mothers-delivery-weight-example"
    * display = "Observation - Edit flag mother's delivery weight"
  * entry[editFlagMothersEducation]
    * reference = "Observation/observation-edit-flag-mothers-education-example"
    * display = "Observation - Edit flag mother's education"
  * entry[editFlagMothersHeight]
    * reference = "Observation/observation-edit-flag-mothers-height-example"
    * display = "Observation - Edit flag mother's height"
  * entry[editFlagMothersPrepregnancyWeight]
    * reference = "Observation/observation-edit-flag-mothers-prepregnancy-weight-example"
    * display = "Observation - Edit flag mother's prepregnancy weight"
  * entry[editFlagNumberPrenatalCareVisits]
    * reference = "Observation/observation-edit-flag-number-prenatal-care-visits-example"
    * display = "Observation - Edit flag number prenatal care visits"
  * entry[editFlagNumberPreviousCesareans]
    * reference = "Observation/observation-edit-flag-number-previous-cesareans-example"
    * display = "Observation - Edit flag number previous cesareans"
  * entry[editFlagPlurality]
    * reference = "Observation/observation-edit-flag-plurality-example"
    * display = "Observation - Edit flag plurality"