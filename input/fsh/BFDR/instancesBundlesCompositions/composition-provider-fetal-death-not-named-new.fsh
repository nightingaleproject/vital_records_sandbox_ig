Instance: composition-provider-fetal-death-not-named-new
InstanceOf: CompositionProviderFetalDeathReportNew
Title: "Composition - Provider Fetal Death Report - Fetus Not Named"
Description: "Composition - Provider Fetal Death Report: Fetus Not Named"
Usage: #example
* meta
  * versionId = "16"
  * lastUpdated = "2023-06-21T22:11:58.756Z"
* extension[Extension-fetal-death-report-number]
  * valueIdentifier
    * type = $v2-0203#FDR
    * value = "9876"
* extension[Extension-fetal-death-local-file-number]
  * valueIdentifier
    * type = $v2-0203#FDRFN
    * value = "11111-11111"
* extension[Extension-date-received-by-registrar]
  * valueDateTime = "2019-02-12"
* identifier.value = "z03eab8c-11e8-4d0c-ad2a-b385395e27da"
* status = #final
* type = $loinc#69045-3 "U.S. standard report of fetal death - 2003 revision"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* encounter
  * reference = "Encounter/encounter-maternity-carmen-teresa-lee"
  * display = "Encounter - Maternity (Carmen Teresa Lee)"
* date = "2019-01-09"
* author
  * reference = "Practitioner/practitioner-vital-records-jessica-leung"
  * display = "Practitioner - Vital Records (Jessica Leung)"
* title = "Provider fetal death report Document"
* section[motherPrenatal]
  // * title = "Mother (prenatal) Section on the Fetal Death Report"
  // * code = $loinc#57073-9 "Prenatal records"
  * focus
    * reference = "Patient/patient-mother-carmen-teresa-lee-new"
    * display = "Patient - Mother (Carmen Teresa Lee)"
  * entry[plannedToDeliverAtHome]
    * reference = "Observation/observation-planned-to-deliver-at-home-not-named"
    * display = "Observation - Planned to Deliver at Home (Carmen Teresa Lee)"
  * entry[firstPrenatalCareVisit]
    * reference = "Observation/observation-date-of-first-prenatal-care-visit-carmen-teresa-lee"
    * display = "Observation - Date of First Prenatal Care Visit (Carmen Teresa Lee)"
  * entry[dateLastNormalMenses]
    * reference = "Observation/observation-last-menstrual-period-carmen-teresa-lee-new"
    * display = "Observation - Last Menstrual Period (Carmen Teresa Lee)"
  * entry[numberNowLiving]
    * reference = "Observation/observation-number-births-now-living-carmen-teresa-lee-new"
    * display = "Observation - Number Births Now Living (Carmen Teresa Lee)"
  * entry[numberNowDead]
    * reference = "Observation/observation-number-births-now-dead-carmen-teresa-lee-new"
    * display = "Observation - Number Births Now Dead (Carmen Teresa Lee)"
  * entry[dateLastLiveBirth]
    * reference = "Observation/observation-date-of-last-live-birth-carmen-teresa-lee"
    * display = "Observation - Date of Last Live Birth (Carmen Teresa Lee)"
  * entry[mothersHeight]
    * reference = "Observation/observation-mother-height-carmen-teresa-lee-new"
    * display = "Observation - Mother Height (Carmen Teresa Lee)"
  * entry[mothersPrepregnancyWeight]
    * reference = "Observation/observation-mother-prepregnancy-weight-carmen-teresa-lee-new"
    * display = "Observation - Mother Prepregnancy Weight (Carmen Teresa Lee)"
  * entry[motherReceivedWICFood]
    * reference = "Observation/observation-mother-received-wic-food-carmen-teresa-lee"
    * display = "Observation - Mother Received WIC Food (Carmen Teresa Lee)"
  * entry[cigaretteSmokingBeforeDuringPregnancy]
    * reference = "Observation/observation-cig-smoking-pregnancy-1-carmen-teresa-lee"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (3 months prior: Carmen Teresa Lee)"
  * entry[cigaretteSmokingBeforeDuringPregnancy]
    * reference = "Observation/observation-cig-smoking-pregnancy-2-carmen-teresa-lee"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (first 3 months: Carmen Teresa Lee)"
  * entry[cigaretteSmokingBeforeDuringPregnancy]
    * reference = "Observation/observation-cig-smoking-pregnancy-3-carmen-teresa-lee"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (last 3 months: Carmen Teresa Lee)"
  * entry[cigaretteSmokingBeforeDuringPregnancy]
    * reference = "Observation/observation-cig-smoking-pregnancy-4-carmen-teresa-lee"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (second 3 months: Carmen Teresa Lee)"
* section[medicalHealthInformation]
  // * title = "Medical and Health Information on the Fetal Death Report"
  // * code = $loinc#55752-0 "Clinical information"
  * focus
    * reference = "Patient/patient-mother-carmen-teresa-lee-new"
    * display = "Patient - Mother (Carmen Teresa Lee)"
  * entry[numberPreviousCesareans]
    * reference = "Observation/observation-number-previous-cesareans-carmen-teresa-lee-new"
    * display = "Observation - Number Previous Cesareans (Carmen Teresa Lee)"
  * entry[fetalPresentation]
    * reference = "Observation/observation-fetal-presentation-not-named"
    * display = "Observation - Fetal Presentation (Fetus Not Named)"
  * entry[finalRouteMethodDelivery]
    * reference = "Procedure/procedure-final-route-method-delivery-not-named"
    * display = "Procedure - Final Route and Method of Delivery (Fetus Not Named)"
* section[fetus]
  // * title = "Fetal delivery information section on the Fetal Death Report"
  // * code = $loinc#76400-1 "Fetal delivery information Document [US Standard Report of Fetal Death]"
  * entry[deliveryWeight]
    * reference = "Observation/observation-birth-weight-not-named-new"
    * display = "Observation - Birth Weight (Fetus Not Named)"
  * entry[gestationalAgeAtDelivery]
    * reference = "Observation/observation-gestational-age-at-delivery-not-named-new"
    * display = "Observation - Gestational Age at Delivery (Fetus Not Named)"
  * entry[causeOfFetalDeath]
    * reference = "Condition/condition-fetal-death-cause-or-condition-not-named"
    * display = "Condition - Fetal Death Cause or Condition (Fetus Not Named)"
  * entry[otherCauseOfDeath]
    * reference = "Condition/condition-fetal-death-other-significant-cause-not-named"
    * display = "Example of Condition-fetal-death-other-significant-cause profile (Fetus Not Named)"
  * entry[estimatedTimeFetalDeath]
    * reference = "Observation/observation-fetal-death-time-point-not-named"
    * display = "Example of Observation-estimated-fetal-death-time-point profile (Fetus Not Named)"
  * entry[autopsyPerformed]
    * reference = "Observation/observation-autopsy-performed-not-named"
    * display = "Example of Observation-autopsy-performed profile (Fetus Not Named)"
  * entry[histologicalExamPerformed]
    * reference = "Observation/observation-histological-placental-exam-performed-not-named"
    * display = "Observation - Histological Placental Exam Performed (Fetus Not Named)"
  * entry[autopsyOrHistologicalExamUsed]
    * reference = "Observation/observation-autopsy-histological-exam-results-used-not-named"
    * display = "Observation - Autopsy or Histological Exam Results Used"
  // why plurality and not numberLiveBirthsThisDelivery / numberFetalDeathsThisDelivery? - updating
  // * entry[+]
  //   * reference = "Observation/observation-plurality-carmen-teresa-lee"
  //   * display = "Observation - Plurality (Carmen Teresa Lee)"
  * entry[numberFetalDeathsThisDelivery]
    * reference = "Observation/observation-number-deaths-this-delivery-carmen-teresa-lee-new"
    * display = "Observation - Number of Fetal Deaths This Delivery (Carmen Teresa Lee)"
* section[motherInformation]
  // * title = "Mother Administrative Section on the Fetal Death Report"
  // * code = $loinc#92014-0 "Mother's administrative information"
  * focus
    * reference = "Patient/patient-mother-carmen-teresa-lee-new"
    * display = "Patient - Mother (Carmen Teresa Lee)"
  * entry[mothersEducation]
    * reference = "Observation/observation-parent-education-level-carmen-teresa-lee"
    * display = "Observation - Parent Education Level (Carmen Teresa Lee)"
* section[mothersQuestionnaireResponse]
  // * title = "Patient's QuestionnaireResponse Section"
  // * code = $loinc#74465-6 "Questionnaire response Document"
  * focus
    * reference = "Patient/patient-mother-carmen-teresa-lee-new"
    * display = "Patient - Mother (Carmen Teresa Lee)"
  * entry
    * reference = "QuestionnaireResponse/QuestionnaireResponse-patients-fetal-death-carmen-lee"
    * display = "QuestionnaireResponse - Patient's Worksheet for Fetal Death Report"