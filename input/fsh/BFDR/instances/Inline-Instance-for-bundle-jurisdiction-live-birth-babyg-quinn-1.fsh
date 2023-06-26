Instance: Inline-Instance-for-bundle-jurisdiction-live-birth-babyg-quinn-1
InstanceOf: Composition
Usage: #inline
* id = "composition-jurisdiction-live-birth-babyg-quinn"
* extension[0]
  * url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-live-birth-certificate-number"
  * valueIdentifier
    * type = $v2-0203#BCT
    * value = "15075"
* extension[+]
  * url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-live-birth-local-file-number"
  * valueIdentifier
    * type = $v2-0203#BCFN
    * value = "4444-55555"
* extension[+]
  * url = "http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-date-filed-by-registrar"
  * valueDateTime = "2019-02-12"
* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27df"
* status = #final
* type = $loinc#92011-6 "Jurisdiction live birth report Document"
* subject = Reference(patient-child-babyg-quinn) "Patient - Child (Baby G Quinn)"
* encounter = Reference(Encounter/encounter-birth-babyg-quinn) "Encounter - Birth (Baby G Quinn)"
* date = "2019-02-12"
* author = Reference(organization-jurisdictional-vital-records-office) "Jurisdictional Vital Records Office"
* title = "Jurisdiction live birth report Document"
* section[0]
  * title = "Mother (prenatal) Section on the Live Birth Certificate"
  * code = $loinc#57073-9 "Prenatal records"
  * focus = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
  * entry[0] = Reference(Observation/observation-date-of-first-prenatal-care-visit-jada-ann-quinn) "Observation - Date of First Prenatal Care Visit (Jada Ann Quinn)"
  * entry[+] = Reference(observation-number-prenatal-visits-jada-ann-quinn) "Observation - Number Prenatal Visits (Jada Ann Quinn)"
  * entry[+] = Reference(observation-last-menstrual-period-jada-ann-quinn) "Observation - Last Menstrual Period (Jada Ann Quinn)"
  * entry[+] = Reference(observation-number-births-now-living-jada-ann-quinn) "Observation - Number Births Now Living (Jada Ann Quinn)"
  * entry[+] = Reference(observation-number-births-now-dead-jada-ann-quinn) "observation-number-births-now-dead-jada-ann-quinn"
  * entry[+] = Reference(Observation/observation-date-of-last-live-birth-jada-ann-quinn) "Observation - Date of Last Live Birth (Jada Ann Quinn)"
  * entry[+] = Reference(observation-number-other-pregnancy-outcomes-jada-ann-quinn) "Observation - Number Other Pregnancy Outcomes (Jada Ann Quinn)"
  * entry[+] = Reference(Observation/observation-date-of-last-other-pregnancy-outcome-jada-ann-quinn) "Observation - Date of Last Other Pregnancy Outcome (Jada Ann Quinn)"
  * entry[+] = Reference(Coverage/coverage-principal-payer-for-delivery-jada-ann-quinn) "Coverage - Principal Payer for Delivery (Jada Ann Quinn)"
  * entry[+] = Reference(observation-mother-delivery-weight-jada-ann-quinn) "Observation - Mother Delivery Weight (Jada Ann Quinn)"
  * entry[+] = Reference(observation-mother-height-jada-ann-quinn) "Observation - Mother Height (Jada Ann Quinn)"
  * entry[+] = Reference(observation-mother-prepregnancy-weight-jada-ann-quinn) "Observation - Mother Prepregnancy Weight (Jada Ann Quinn)"
  * entry[+] = Reference(Observation/observation-mother-received-wic-food-jada-ann-quinn) "Observation - Mother Received WIC Food (Jada Ann Quinn)"
  * entry[+] = Reference(Observation/observation-cig-smoking-pregnancy-1-jada-ann-quinn) "Observation - Cigarette Smoking Before/During Pregnancy (3 months prior: Jada Ann Quinn)"
  * entry[+] = Reference(Observation/observation-cig-smoking-pregnancy-2-jada-ann-quinn) "Observation - Cigarette Smoking Before/During Pregnancy (first 3 months: Jada Ann Quinn)"
  * entry[+] = Reference(Observation/observation-cig-smoking-pregnancy-3-jada-ann-quinn) "Observation - Cigarette Smoking Before/During Pregnancy (last 3 months: Jada Ann Quinn)"
  * entry[+] = Reference(Observation/observation-cig-smoking-pregnancy-4-jada-ann-quinn) "Observation - Cigarette Smoking Before/During Pregnancy (second 3 months: Jada Ann Quinn)"
* section[+]
  * title = "Medical and Health Information on the Live Birth Certificate"
  * code = $loinc#55752-0 "Clinical information"
  * focus = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
  * entry[0] = Reference(observation-pregnancy-risk-factor-jada-ann-quinn-1) "Observation - Pregnancy Risk Factor (Jada Ann Quinn: Pregnancy-induced hypertension)"
  * entry[+] = Reference(observation-pregnancy-risk-factor-jada-ann-quinn-2) "Observation - Pregnancy Risk Factor (Jada Ann Quinn: Fertility enhancing drug therapy)"
  * entry[+] = Reference(observation-pregnancy-risk-factor-jada-ann-quinn-3) "Observation - Pregnancy Risk Factor (Jada Ann Quinn: Assisted fertilization)"
  * entry[+] = Reference(observation-pregnancy-risk-factor-jada-ann-quinn-4) "Observation - Pregnancy Risk Factor (Jada Ann Quinn: Deliveries by Cesarean)"
  * entry[+] = Reference(observation-number-previous-cesareans-jada-ann-quinn) "Observation - Number Previous Cesareans (Jada Ann Quinn)"
  * entry[+] = Reference(Condition/condition-infection-present-during-pregnancy-jada-ann-quinn) "Condition - Infection Present During Pregnancy (Jada Ann Quinn)"
  * entry[+] = Reference(Procedure/procedure-obstetric-procedure-jada-ann-quinn) "Procedure - Obstetric Procedure (Jada Ann Quinn)"
  * entry[+] = Reference(observation-characteristic-of-labor-and-delivery-babyg-quinn-1) "Observation - Characteristic of Labor and Delivery (Baby G Quinn: Chorioamnionitis)"
  * entry[+] = Reference(observation-characteristic-of-labor-and-delivery-babyg-quinn-2) "Observation - Characteristic of Labor and Delivery (Baby G Quinn: Antibiotics received during labor)"
  * entry[+] = Reference(observation-characteristic-of-labor-and-delivery-babyg-quinn-3) "Observation - Characteristic of Labor and Delivery (Baby G Quinn: Induction of labor)"
  * entry[+] = Reference(observation-characteristic-of-labor-and-delivery-babyg-quinn-4) "Observation - Characteristic of Labor and Delivery (Baby G Quinn: Epidural or spinal anesthesia)"
  * entry[+] = Reference(Observation/observation-fetal-presentation-babyg-quinn) "Observation - Fetal Presentation (Baby G Quinn)"
  * entry[+] = Reference(Procedure/procedure-final-route-method-delivery-babyg-quinn) "Procedure - Final Route and Method of Delivery (Baby G Quinn)"
  * entry[+] = Reference(condition-maternal-morbidity-jada-ann-quinn) "Condition - Maternal Morbidity (Jada Ann Quinn)"
* section[+]
  * title = "Newborn section on the Live Birth Certificate"
  * code = $loinc#57075-4 "Newborn delivery information"
  * entry[0] = Reference(observation-birth-weight-babyg-quinn) "Observation - Birth Weight (Baby G Quinn)"
  * entry[+] = Reference(observation-gestational-age-at-delivery-babyg-quinn) "Observation - Gestational Age at Delivery (Baby G Quinn)"
  * entry[+] = Reference(observation-apgar-score-babyg-quinn-1-min) "Observation - APGAR Score (BabyG Quinn: 1 min)"
  * entry[+] = Reference(observation-apgar-score-babyg-quinn-5-min) "Observation - APGAR Score (BabyG Quinn: 5 min)"
  * entry[+] = Reference(observation-plurality-jada-ann-quinn) "Observation - Plurality (Jada Ann Quinn)"
  * entry[+] = Reference(condition-abnormal-condition-of-newborn-babyg-quinn) "Condition - Abnormal Condition of Newborn (Baby G Quinn)"
  * entry[+] = Reference(Condition/condition-congenital-anomaly-of-newborn-babyg-quinn) "Condition - Congenital Anomaly of Newborn (BabyG Quinn) 1"
  * entry[+] = Reference(Condition/condition-congenital-anomaly-of-newborn-babyg-quinn-2) "Condition - Congenital Anomaly of Newborn (Baby G Quinn) 2"
  * entry[+] = Reference(observation-infant-living-babyg-quinn) "Observation - Infant Living (Baby G Quinn)"
  * entry[+] = Reference(Observation/observation-infant-breastfed-at-discharge-babyg-quinn) "Observation - Infant Breastfed at Discharge (Baby G Quinn)"
* section[+]
  * title = "Mother Administrative Section on the Live Birth Certificate"
  * code = $loinc#92014-0 "Mother's administrative information"
  * focus = Reference(patient-mother-jada-ann-quinn) "Patient - Mother (Jada Ann Quinn)"
  * entry[0] = Reference(Observation/observation-mother-married-during-pregnancy-jada-ann-quinn) "Observation - Mother Married During Pregnancy (Jada Ann Quinn)"
  * entry[+] = Reference(Observation/observation-ssn-requested-for-child-babyg-quinn) "Observation - SSN Requested for Child (Baby G Quinn)"
  * entry[+] = Reference(observation-parent-education-level-jada-ann-quinn) "Observation - Parent Education Level (Jada Ann Quinn)"
* section[+]
  * title = "Father Section on the Live Birth Certificate"
  * code = $loinc#92013-2 "Father's administrative information"
  * focus = Reference(relatedperson-father-natural-james-brandon-quinn) "RelatedPerson - Father (James Brandon Quinn)"
  * entry[0] = Reference(Observation/observation-paternity-acknowledgement-signed-james-quinn) "Observation - Paternity Acknowledgement Signed (James Quinn)"
  * entry[+] = Reference(observation-parent-education-level-james-quinn) "Observation - Parent Education Level (James Quinn)"
* section[+]
  * title = "Edit Flags Section"
  * code = $loinc#92012-4 "Edit flags section"
  * entry[0] = Reference(Observation/observation-edit-birth-weight-babyg-quinn) "Observation - Edit flag birthweight"
  * entry[+] = Reference(Observation/observation-edit-flag-estimate-of-gestation-example) "Observation - Edit flag estimate of gestation"
  * entry[+] = Reference(Observation/observation-edit-flag-fathers-date-of-birth-example) "Observation - Edit flag father's date of birth"
  * entry[+] = Reference(Observation/observation-edit-flag-fathers-education-example) "Observation - Edit flag father's education"
  * entry[+] = Reference(Observation/observation-edit-flag-mothers-date-of-birth-example) "Observation - Edit flag mother's date of birth"
  * entry[+] = Reference(Observation/observation-edit-flag-mothers-delivery-weight-example) "Observation - Edit flag mother's delivery weight"
  * entry[+] = Reference(Observation/observation-edit-flag-mothers-education-example) "Observation - Edit flag mother's education"
  * entry[+] = Reference(Observation/observation-edit-flag-mothers-height-example) "Observation - Edit flag mother's height"
  * entry[+] = Reference(Observation/observation-edit-flag-mothers-prepregnancy-weight-example) "Observation - Edit flag mother's prepregnancy weight"
  * entry[+] = Reference(Observation/observation-edit-flag-number-prenatal-care-visits-example) "Observation - Edit flag number prenatal care visits"
  * entry[+] = Reference(Observation/observation-edit-flag-number-previous-cesareans-example) "Observation - Edit flag number previous cesareans"
  * entry[+] = Reference(Observation/observation-edit-flag-plurality-example) "Observation - Edit flag plurality"