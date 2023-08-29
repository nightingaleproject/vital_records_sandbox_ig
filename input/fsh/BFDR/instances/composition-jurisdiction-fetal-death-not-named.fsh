Instance: composition-jurisdiction-fetal-death-not-named
InstanceOf: CompositionJurisdictionFetalDeathReportNew
Title: "Composition - Jurisdiction Fetal Death Report - Fetus Not Named"
Description: "Composition Jurisdiction Fetal Death Report: Fetus Not Named example"
Usage: #example
* meta
  * versionId = "30"
  * lastUpdated = "2023-06-23T04:55:55.993Z"
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
* extension[+]
  * url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-replacement-status"
  * valueCodeableConcept = CodeSystemReplacement#original
* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27da"
* status = #final
* type = $loinc#92010-8 "Jurisdiction fetal death report Document"
* subject
  * reference = "Patient/patient-decedent-fetus-not-named"
  * display = "Patient - Decedent Fetus (Fetus Not Named)"
* encounter
  * reference = "Encounter/encounter-maternity-carmen-teresa-lee"
  * display = "Encounter - Maternity (Carmen Teresa Lee)"
* date = "2019-01-09"
* author
  * reference = "Organization/organization-jurisdictional-vital-records-office"
  * display = "Jurisdictional Vital Records Office"
* title = "Jurisdiction fetal death report Document"
* section[0]
  * title = "Mother (prenatal) Section on the Fetal Death Report"
  * code = $loinc#57073-9 "Prenatal records"
  * focus
    * reference = "Patient/patient-mother-carmen-teresa-lee"
    * display = "Patient - Mother (Carmen Teresa Lee)"
  * entry[0]
    * reference = "Observation/observation-planned-to-deliver-at-home-not-named"
    * display = "Observation - Planned to Deliver at Home (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-date-of-first-prenatal-care-visit-carmen-teresa-lee"
    * display = "Observation - Date of First Prenatal Care Visit (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-last-menstrual-period-carmen-teresa-lee"
    * display = "Observation - Last Menstrual Period (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-number-births-now-living-carmen-teresa-lee"
    * display = "Observation - Number Births Now Living (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-number-births-now-dead-carmen-teresa-lee"
    * display = "Observation - Number Births Now Dead (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-date-of-last-live-birth-carmen-teresa-lee"
    * display = "Observation - Date of Last Live Birth (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-mother-height-carmen-teresa-lee"
    * display = "Observation - Mother Height (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-mother-prepregnancy-weight-carmen-teresa-lee"
    * display = "Observation - Mother Prepregnancy Weight (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-mother-received-wic-food-carmen-teresa-lee"
    * display = "Observation - Mother Received WIC Food (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-cig-smoking-pregnancy-1-carmen-teresa-lee"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (3 months prior: Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-cig-smoking-pregnancy-2-carmen-teresa-lee"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (first 3 months: Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-cig-smoking-pregnancy-3-carmen-teresa-lee"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (last 3 months: Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-cig-smoking-pregnancy-4-carmen-teresa-lee"
    * display = "Observation - Cigarette Smoking Before/During Pregnancy (second 3 months: Carmen Teresa Lee)"
* section[+]
  * title = "Medical and Health Information on the Fetal Death Report"
  * code = $loinc#55752-0 "Clinical information"
  * focus
    * reference = "Patient/patient-mother-carmen-teresa-lee"
    * display = "Patient - Mother (Carmen Teresa Lee)"
  * entry[0]
    * reference = "Observation/observation-number-previous-cesareans-carmen-teresa-lee"
    * display = "Observation - Number Previous Cesareans (Carmen Teresa Lee)"
  * entry[+]
    * reference = "Observation/observation-fetal-presentation-not-named"
    * display = "Observation - Fetal Presentation (Fetus Not Named)"
  * entry[+]
    * reference = "Procedure/procedure-final-route-method-delivery-not-named"
    * display = "Procedure - Final Route and Method of Delivery (Fetus Not Named)"
* section[+]
  * title = "Fetal delivery information section on the Fetal Death Report"
  * code = $loinc#76400-1 "Fetal delivery information Document [US Standard Report of Fetal Death]"
  * entry[0]
    * reference = "Observation/observation-birth-weight-not-named"
    * display = "Observation - Birth Weight (Fetus Not Named)"
  * entry[+]
    * reference = "Observation/observation-gestational-age-at-delivery-not-named"
    * display = "Observation - Gestational Age at Delivery (Fetus Not Named)"
  * entry[+]
    * reference = "Condition/condition-fetal-death-cause-or-condition-not-named"
    * display = "Condition - Fetal Death Cause or Condition (Fetus Not Named)"
  * entry[+]
    * reference = "Condition/condition-fetal-death-other-significant-cause-not-named"
    * display = "Example of Condition-fetal-death-other-significant-cause profile (Fetus Not Named)"
  * entry[+]
    * reference = "Observation/observation-fetal-death-time-point-not-named"
    * display = "Example of Observation-estimated-fetal-death-time-point profile (Fetus Not Named)"
  * entry[+]
    * reference = "Observation/observation-autopsy-performed-not-named"
    * display = "Example of Observation-autopsy-performed profile (Fetus Not Named)"
  * entry[+]
    * reference = "Observation/observation-histological-placental-exam-performed-not-named"
    * display = "Observation - Histological Placental Exam Performed (Fetus Not Named)"
  * entry[+]
    * reference = "Observation/observation-autopsy-histological-exam-results-used-not-named"
    * display = "Observation - Autopsy or Histological Exam Results Used"
  * entry[+]
    * reference = "Observation/observation-plurality-carmen-teresa-lee"
    * display = "Observation - Plurality (Carmen Teresa Lee)"
* section[+]
  * title = "Mother Administrative Section on the Fetal Death Report"
  * code = $loinc#92014-0 "Mother's administrative information"
  * focus
    * reference = "Patient/patient-mother-carmen-teresa-lee"
    * display = "Patient - Mother (Carmen Teresa Lee)"
  * entry
    * reference = "Observation/observation-parent-education-level-carmen-teresa-lee"
    * display = "Observation - Parent Education Level (Carmen Teresa Lee)"
* section[+]
  * title = "Edit Flags Section"
  * code = $loinc#92012-4 "Edit flags section"
  * entry[0]
    * reference = "Observation/observation-edit-flag-delivery-wgt-not-named"
    * display = "Observation - Edit flag birthweight"
  * entry[+]
    * reference = "Observation/observation-edit-flag-est-gestation-not-named"
    * display = "Observation - Edit flag estimate of gestation"
  * entry[+]
    * reference = "Observation/observation-edit-flag-mothers-dob-not-named"
    * display = "Observation - Edit flag mother's date of birth"
  * entry[+]
    * reference = "Observation/observation-edit-flag-mothers-education-not-named"
    * display = "Observation - Edit flag mother's education"
  * entry[+]
    * reference = "Observation/observation-edit-flag-mothers-height-not-named"
    * display = "Observation - Edit flag mother's height"
  * entry[+]
    * reference = "Observation/observation-edit-flag-mothers-prepreg-wgt-not-named"
    * display = "Observation - Edit flag mother's prepregnancy weight"
  * entry[+]
    * reference = "Observation/observation-edit-flag-nbr-previous-cesareans-not-named"
    * display = "Observation - Edit flag number previous cesareans"
  * entry[+]
    * reference = "Observation/observation-edit-flag-plurality-not-named"
    * display = "Observation - Edit flag plurality"