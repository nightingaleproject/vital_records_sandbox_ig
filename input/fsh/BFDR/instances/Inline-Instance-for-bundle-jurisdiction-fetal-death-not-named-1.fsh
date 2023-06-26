Instance: Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-1
InstanceOf: Composition
Usage: #inline
* id = "composition-jurisdiction-fetal-death-not-named"
* extension[0]
  * url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-fetal-death-report-number"
  * valueIdentifier
    * type = $v2-0203#FDR
    * value = "9876"
* extension[+]
  * url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-fetal-death-local-file-number"
  * valueIdentifier
    * type = $v2-0203#FDRFN
    * value = "11111-11111"
* extension[+]
  * url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-date-received-by-registrar"
  * valueDateTime = "2019-02-12"
* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27da"
* status = #final
* type = $loinc#92010-8 "Jurisdiction fetal death report Document"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* encounter = Reference(Encounter/encounter-maternity-carmen-teresa-lee) "Encounter - Maternity (Carmen Teresa Lee)"
* date = "2019-01-09"
* author = Reference(organization-jurisdictional-vital-records-office) "Jurisdictional Vital Records Office"
* title = "Jurisdiction fetal death report Document"
* section[0]
  * title = "Mother (prenatal) Section on the Fetal Death Report"
  * code = $loinc#57073-9 "Prenatal records"
  * focus = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
  * entry[0] = Reference(Observation/observation-planned-to-deliver-at-home-not-named) "Observation - Planned to Deliver at Home (Carmen Teresa Lee)"
  * entry[+] = Reference(Observation/observation-date-of-first-prenatal-care-visit-carmen-teresa-lee) "Observation - Date of First Prenatal Care Visit (Carmen Teresa Lee)"
  * entry[+] = Reference(observation-last-menstrual-period-carmen-teresa-lee) "Observation - Last Menstrual Period (Carmen Teresa Lee)"
  * entry[+] = Reference(observation-number-births-now-living-carmen-teresa-lee) "Observation - Number Births Now Living (Carmen Teresa Lee)"
  * entry[+] = Reference(observation-number-births-now-dead-carmen-teresa-lee) "Observation - Number Births Now Dead (Carmen Teresa Lee)"
  * entry[+] = Reference(Observation/observation-date-of-last-live-birth-carmen-teresa-lee) "Observation - Date of Last Live Birth (Carmen Teresa Lee)"
  * entry[+] = Reference(observation-mother-height-carmen-teresa-lee) "Observation - Mother Height (Carmen Teresa Lee)"
  * entry[+] = Reference(observation-mother-prepregnancy-weight-carmen-teresa-lee) "Observation - Mother Prepregnancy Weight (Carmen Teresa Lee)"
  * entry[+] = Reference(Observation/observation-mother-received-wic-food-carmen-teresa-lee) "Observation - Mother Received WIC Food (Carmen Teresa Lee)"
  * entry[+] = Reference(Observation/observation-cig-smoking-pregnancy-1-carmen-teresa-lee) "Observation - Cigarette Smoking Before/During Pregnancy (3 months prior: Carmen Teresa Lee)"
  * entry[+] = Reference(Observation/observation-cig-smoking-pregnancy-2-carmen-teresa-lee) "Observation - Cigarette Smoking Before/During Pregnancy (first 3 months: Carmen Teresa Lee)"
  * entry[+] = Reference(Observation/observation-cig-smoking-pregnancy-3-carmen-teresa-lee) "Observation - Cigarette Smoking Before/During Pregnancy (last 3 months: Carmen Teresa Lee)"
  * entry[+] = Reference(Observation/observation-cig-smoking-pregnancy-4-carmen-teresa-lee) "Observation - Cigarette Smoking Before/During Pregnancy (second 3 months: Carmen Teresa Lee)"
* section[+]
  * title = "Medical and Health Information on the Fetal Death Report"
  * code = $loinc#55752-0 "Clinical information"
  * focus = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
  * entry[0] = Reference(observation-pregnancy-risk-factor-carmen-teresa-lee-1) "Observation - Pregnancy Risk Factor (Carmen Teresa Lee: Pregnancy-induced hypertension)"
  * entry[+] = Reference(observation-pregnancy-risk-factor-carmen-teresa-lee-2) "Observation - Pregnancy Risk Factor (Carmen Teresa Lee: Fertility enhancing drug therapy)"
  * entry[+] = Reference(observation-number-previous-cesareans-carmen-teresa-lee) "Observation - Number Previous Cesareans (Carmen Teresa Lee)"
  * entry[+] = Reference(Observation/observation-fetal-presentation-not-named) "Observation - Fetal Presentation (Fetus Not Named)"
  * entry[+] = Reference(Procedure/procedure-final-route-method-delivery-not-named) "Procedure - Final Route and Method of Delivery (Fetus Not Named)"
  * entry[+] = Reference(condition-maternal-morbidity-carmen-teresa-lee) "Condition - Maternal Morbidity (Carmen Teresa Lee)"
* section[+]
  * title = "Fetal delivery information section on the Fetal Death Report"
  * code = $loinc#76400-1 "Fetal delivery information Document [US Standard Report of Fetal Death]"
  * entry[0] = Reference(observation-birth-weight-not-named) "Observation - Birth Weight (Fetus Not Named)"
  * entry[+] = Reference(observation-gestational-age-at-delivery-not-named) "Observation - Gestational Age at Delivery (Fetus Not Named)"
  * entry[+] = Reference(Condition/condition-fetal-death-cause-or-condition-not-named) "Condition - Fetal Death Cause or Condition (Fetus Not Named)"
  * entry[+] = Reference(Condition/condition-fetal-death-other-significant-cause-not-named) "Example of Condition-fetal-death-other-significant-cause profile (Fetus Not Named)"
  * entry[+] = Reference(Observation/observation-fetal-death-time-point-not-named) "Example of Observation-estimated-fetal-death-time-point profile (Fetus Not Named)"
  * entry[+] = Reference(observation-autopsy-performed-not-named) "Example of Observation-autopsy-performed profile (Fetus Not Named)"
  * entry[+] = Reference(Observation/observation-histological-placental-exam-performed-not-named) "Observation - Histological Placental Exam Performed (Fetus Not Named)"
  * entry[+] = Reference(Observation/observation-autopsy-histological-exam-results-used-not-named) "Observation - Autopsy or Histological Exam Results Used"
  * entry[+] = Reference(observation-plurality-carmen-teresa-lee) "Observation - Plurality (Carmen Teresa Lee)"
* section[+]
  * title = "Mother Administrative Section on the Fetal Death Report"
  * code = $loinc#92014-0 "Mother's administrative information"
  * focus = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
  * entry = Reference(observation-parent-education-level-carmen-teresa-lee) "Observation - Parent Education Level (Carmen Teresa Lee)"
* section[+]
  * title = "Edit Flags Section"
  * code = $loinc#92012-4 "Edit flags section"
  * entry[0] = Reference(Observation/observation-edit-birth-weight-babyg-quinn) "Observation - Edit flag birthweight"
  * entry[+] = Reference(Observation/observation-edit-flag-estimate-of-gestation-example) "Observation - Edit flag estimate of gestation"
  * entry[+] = Reference(Observation/observation-edit-flag-mothers-date-of-birth-example) "Observation - Edit flag mother's date of birth"
  * entry[+] = Reference(Observation/observation-edit-flag-mothers-education-example) "Observation - Edit flag mother's education"
  * entry[+] = Reference(Observation/observation-edit-flag-mothers-height-example) "Observation - Edit flag mother's height"
  * entry[+] = Reference(Observation/observation-edit-flag-mothers-prepregnancy-weight-example) "Observation - Edit flag mother's prepregnancy weight"
  * entry[+] = Reference(Observation/observation-edit-flag-number-previous-cesareans-example) "Observation - Edit flag number previous cesareans"
  * entry[+] = Reference(Observation/observation-edit-flag-plurality-example) "Observation - Edit flag plurality"