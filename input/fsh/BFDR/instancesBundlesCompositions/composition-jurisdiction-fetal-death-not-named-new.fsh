Instance: composition-jurisdiction-fetal-death-not-named-new
InstanceOf: CompositionJurisdictionFetalDeathReportNew
Title: "Composition - Jurisdiction Fetal Death Report - Fetus Not Named"
Description: "Composition Jurisdiction Fetal Death Report: Fetus Not Named example"
Usage: #example
* extension[Extension-fetal-death-report-number]
  //* url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-fetal-death-report-number"
  * valueIdentifier
    * type = $v2-0203#FDR
    * value = "9876"
* extension[Extension-fetal-death-local-file-number]
  //* url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-fetal-death-local-file-number"
  * valueIdentifier
    * type = $v2-0203#FDRFN
    * value = "11111-11111"
* extension[Extension-date-received-by-registrar]
  //* url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-date-received-by-registrar"
  * valueDateTime = "2019-02-12"
* extension[replacementStatus]
  //* url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-replacement-status"
  * valueCodeableConcept = ReplaceStatusCS#original
* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27da"
* status = #final
* type = $loinc#92010-8 "Jurisdiction fetal death report Document"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* encounter = Reference(encounter-maternity-carmen-teresa-lee) "Encounter - Maternity (Carmen Teresa Lee)"
* date = "2019-01-09"
* author = Reference(organization-jurisdictional-vital-records-office) "Jurisdictional Vital Records Office"
* title = "Jurisdiction fetal death report Document"
* section[motherPrenatal]
  // * title = "Mother (prenatal) Section on the Fetal Death Report"
  // * code = $loinc#57073-9 "Prenatal records"
  * focus = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
  * entry[plannedToDeliverAtHome] = Reference(observation-planned-to-deliver-at-home-not-named) "Observation - Planned to Deliver at Home (Carmen Teresa Lee)"
  * entry[firstPrenatalCareVisit] = Reference(observation-date-of-first-prenatal-care-visit-carmen-teresa-lee) "Observation - Date of First Prenatal Care Visit (Carmen Teresa Lee)"
  * entry[dateLastNormalMenses] = Reference(observation-last-menstrual-period-carmen-teresa-lee) "Observation - Last Menstrual Period (Carmen Teresa Lee)"
  * entry[numberNowLiving] = Reference(observation-number-births-now-living-carmen-teresa-lee) "Observation - Number Births Now Living (Carmen Teresa Lee)"
  * entry[numberNowDead] = Reference(observation-number-births-now-dead-carmen-teresa-lee) "Observation - Number Births Now Dead (Carmen Teresa Lee)"
  * entry[dateLastLiveBirth] = Reference(observation-date-of-last-live-birth-carmen-teresa-lee) "Observation - Date of Last Live Birth (Carmen Teresa Lee)"
  * entry[mothersHeight] = Reference(observation-mother-height-carmen-teresa-lee-w-edit) "Observation - Mother Height (Carmen Teresa Lee)"
  * entry[mothersPrepregnancyWeight] = Reference(observation-mother-prepregnancy-weight-carmen-teresa-lee-w-edit) "Observation - Mother Prepregnancy Weight (Carmen Teresa Lee)"
  * entry[motherReceivedWICFood] = Reference(observation-mother-received-wic-food-carmen-teresa-lee) "Observation - Mother Received WIC Food (Carmen Teresa Lee)"
  * entry[cigaretteSmokingBeforeDuringPregnancy] = Reference(observation-cig-smoking-pregnancy-1-carmen-teresa-lee) "Observation - Cigarette Smoking Before/During Pregnancy (3 months prior: Carmen Teresa Lee)"
  * entry[cigaretteSmokingBeforeDuringPregnancy] = Reference(observation-cig-smoking-pregnancy-2-carmen-teresa-lee) "Observation - Cigarette Smoking Before/During Pregnancy (first 3 months: Carmen Teresa Lee)"
  * entry[cigaretteSmokingBeforeDuringPregnancy] = Reference(observation-cig-smoking-pregnancy-3-carmen-teresa-lee) "Observation - Cigarette Smoking Before/During Pregnancy (last 3 months: Carmen Teresa Lee)"
  * entry[cigaretteSmokingBeforeDuringPregnancy] = Reference(observation-cig-smoking-pregnancy-4-carmen-teresa-lee) "Observation - Cigarette Smoking Before/During Pregnancy (second 3 months: Carmen Teresa Lee)"
* section[medicalHealthInformation] 
  // * title = "Medical and Health Information on the Fetal Death Report"
  // * code = $loinc#55752-0 "Clinical information"
  * focus = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
  * entry[numberPreviousCesareans] = Reference(observation-number-previous-cesareans-carmen-teresa-lee-w-edit) "Observation - Number Previous Cesareans (Carmen Teresa Lee)"
  * entry[fetalPresentation] = Reference(observation-fetal-presentation-not-named) "Observation - Fetal Presentation (Fetus Not Named)"
  * entry[finalRouteMethodDelivery] = Reference(procedure-final-route-method-delivery-not-named) "Procedure - Final Route and Method of Delivery (Fetus Not Named)"
  // No maternal morbidity
  // No pregnancy risk factors
* section[fetus]
  // * title = "Fetal delivery information section on the Fetal Death Report"
  // * code = $loinc#76400-1 "Fetal delivery information Document [US Standard Report of Fetal Death]"
  * entry[deliveryWeight] = Reference(observation-birth-weight-not-named-w-edit) "Observation - Birth Weight (Fetus Not Named)"
  * entry[gestationalAgeAtDelivery] = Reference(observation-gestational-age-at-delivery-not-named-w-edit) "Observation - Gestational Age at Delivery (Fetus Not Named)"
  * entry[causeOfFetalDeath] = Reference(condition-fetal-death-cause-or-condition-not-named) "Condition - Fetal Death Cause or Condition (Fetus Not Named)"
  * entry[otherCauseOfDeath] = Reference(condition-fetal-death-other-significant-cause-not-named) "Example of Condition-fetal-death-other-significant-cause profile (Fetus Not Named)"
  * entry[estimatedTimeFetalDeath] = Reference(observation-fetal-death-time-point-not-named) "Example of Observation-estimated-fetal-death-time-point profile (Fetus Not Named)"
  * entry[autopsyPerformed] = Reference(observation-autopsy-performed-not-named) "Example of Observation-autopsy-performed profile (Fetus Not Named)"
  * entry[histologicalExamPerformed] = Reference(observation-histological-placental-exam-performed-not-named) "Observation - Histological Placental Exam Performed (Fetus Not Named)"
  * entry[autopsyOrHistologicalExamUsed] = Reference(observation-autopsy-histological-exam-results-used-not-named) "Observation - Autopsy or Histological Exam Results Used"
  // * entry[+]
  //   * reference = "Observation/observation-plurality-carmen-teresa-lee"
  //   * display = "Observation - Plurality (Carmen Teresa Lee)" 
  * entry[numberFetalDeathsThisDelivery] = Reference(observation-number-deaths-this-delivery-carmen-teresa-lee) "Observation - Number of Fetal Deaths This Delivery - Carmen Teresa Lee"
* section[motherInformation]
  // * title = "Mother Administrative Section on the Fetal Death Report"
  // * code = $loinc#92014-0 "Mother's administrative information"
  * focus = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
  * entry[mothersEducation] = Reference(observation-parent-education-level-carmen-teresa-lee) "Observation - Parent Education Level (Carmen Teresa Lee)"
* section[editFlags]
  // * title = "Edit Flags Section"
  // * code = $loinc#92012-4 "Edit flags section"
  // * entry[editFlagWeightOfFetus] = Reference(observation-edit-flag-delivery-wgt-not-named) "Observation - Edit flag birthweight"
  //* entry[editFlagEstimateOfGestation] = Reference(observation-edit-flag-est-gestation-not-named) "Observation - Edit flag estimate of gestation"
  // * entry[editFlagMothersDateOfBirth] = Reference(observation-edit-flag-mothers-dob-not-named) "Observation - Edit flag mother's date of birth"
  * entry[editFlagMothersEducation] = Reference(observation-edit-flag-mothers-education-not-named) "Observation - Edit flag mother's education"
  //* entry[editFlagMothersHeight] = Reference(observation-edit-flag-mothers-height-not-named) "Observation - Edit flag mother's height"
  //* entry[editFlagMothersPrepregnancyWeight] = Reference(observation-edit-flag-mothers-prepreg-wgt-not-named) "Observation - Edit flag mother's prepregnancy weight"
  //* entry[editFlagNumberPreviousCesareans] = Reference(observation-edit-flag-nbr-previous-cesareans-not-named) "Observation - Edit flag number previous cesareans"
  //* entry[editFlagPlurality] = Reference(observation-edit-flag-plurality-not-named) "Observation - Edit flag plurality"
