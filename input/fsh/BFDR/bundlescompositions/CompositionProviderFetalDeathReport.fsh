Profile: CompositionProviderFetalDeathReport
Parent: Composition
Id: Composition-provider-fetal-death-report
Title: "Composition - Provider Fetal Death Report"
Description: "This Composition profile contains constraints to address the use case describing the need for fetal death information to be recorded and communicated to the jurisdictional Vital Records Office."
* ^meta.versionId = "69"
* ^meta.lastUpdated = "2023-04-25T05:58:09.576+00:00"
* ^meta.source = "#q3kYsclRE3ANIm1f"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* extension MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* extension contains
    ExtensionFetalDeathReportNumber named fetalDeathReportNumber 0..1 MS and
    ExtensionFetalDeathLocalFileNumber named fetalDeathLocalFileNumber 0..1 MS and
    ExtensionDatereceivedByRegistrar named dateReceivedByRegistrar 1..1 MS
* extension[fetalDeathReportNumber] ^short = "State File Number"
* extension[fetalDeathLocalFileNumber] ^short = "Local File No."
* status MS
  * ^short = "In the case of a fetal death sent in error, a status of 'entered-in-error' must be set."
  * ^definition = "In the case of a fetal death sent in error, a status of 'entered-in-error' must be set."
* type = $loinc#69045-3
* type MS
  * ^short = "U.S. standard report of fetal death - 2003 revision"
  * ^definition = "U.S. standard report of fetal death - 2003 revision"
* subject 1.. MS
* subject only Reference($Patient-decedent-fetus-vr)
  * ^short = "The subject of the composition is the decedent fetus"
  * ^definition = "The subject of the composition as a whole is the decedent fetus. Different sections in the composition have different focus (e.g.: the mother)."
* encounter only Reference(Encounter_Maternity)
* encounter MS
  * ^short = "The Encounter for the Composition is the mother's maternity encounter."
  * ^definition = "The Encounter for the Composition is the mother's maternity encounter."
* author ..1 MS
* author only Reference($Practitioner-vr)
  * ^short = "The author is the person who verifies/approves the accuracy of the data to be sent to the vital records system."
  * ^definition = "Name and title of person completing the report. May be, but need not be, the same as the attendant at delivery."
* section 1.. MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^short = "The Composition is broken into sections that, where possible, align with the sections in the Fetal Death Report."
  * ^definition = "The Composition is broken into sections that, where possible, align with the sections in the Fetal Death Report. The sections are Mother, Mother Prenatal,  Medical and Health, and fetus. Various administrative and demographic data in the Birth Certificate are contained in other locations in the Composition, such as the Patient and Encounter profiles."
* section contains
    motherPrenatal 0..1 MS and
    medicalHealthInformation 0..1 MS and
    fetus 0..1 MS and
    motherInformation 0..1 MS and
    mothersQuestionnaireResponse 0..1
* section[motherPrenatal] ^short = "Mother (prenatal) section on the Fetal Death Report"
  * ^definition = "This section contains items from the Mother (prenatal) on theFetal Death Report."
  * code 1.. MS
  * code = $loinc#57073-9
    * ^short = "Prenatal records"
    * ^definition = "Prenatal records"
  * focus 1.. MS
  * focus only Reference($Patient-mother-vr)
    * ^short = "The focus of this section is the mother"
    * ^definition = "The subject of the composition as a whole is the fetus baby. The focus of this section in the composition is the mother."
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Mother Prenatal section"
    * ^definition = "Entries that are contained in the Mother Prenatal section"
  * entry contains
      plannedToDeliverAtHome 0..1 MS and
      firstPrenatalCareVisit 0..1 MS and
      dateLastNormalMenses 0..1 MS and
      numberNowLiving 0..1 MS and
      numberNowDead 0..1 MS and
      dateLastLiveBirth 0..1 MS and
      mothersHeight 0..1 MS and
      mothersPrepregnancyWeight 0..1 MS and
      motherReceivedWICFood 0..1 MS and
      cigaretteSmokingBeforeDuringPregnancy 0..4 MS
  * entry[plannedToDeliverAtHome] only Reference(ObservationPlannedToDeliverAtHome)
    * ^short = "Planned to deliver at home"
    * ^definition = "Planned to deliver at home"
  * entry[firstPrenatalCareVisit] only Reference(ObservationDateOfFirstPrenatalCareVisit)
    * ^short = "First prenatal care visit"
    * ^definition = "Date that mother had her first prenatal care visit."
  * entry[dateLastNormalMenses] only Reference($Observation-last-menstrual-period-vr)
    * ^short = "Date last normal menses began"
    * ^definition = "Date that the mother's last normal menses began. This item is used to compute the gestational age of the infant."
  * entry[numberNowLiving] only Reference($Observation-number-births-now-living-vr)
    * ^short = "Number of previous live births now living"
    * ^definition = "The pregnancy history of the mother with respect to previous children born alive"
  * entry[numberNowDead] only Reference($Observation-number-births-now-dead-vr)
    * ^short = "Number of previous live births now dead"
    * ^definition = "The pregnancy history of the mother with respect to previous children born alive"
  * entry[dateLastLiveBirth] only Reference(ObservationDateOfLastLiveBirth)
    * ^short = "Date of last live birth"
    * ^definition = "The pregnancy history of the mother with respect to previous children born alive"
  * entry[mothersHeight] only Reference($Observation-mother-height-vr)
    * ^short = "Mother's height"
    * ^definition = "The mother's height"
  * entry[mothersPrepregnancyWeight] only Reference($Observation-mother-prepregnancy-weight-vr)
    * ^short = "Mother's prepregnancy weight"
    * ^definition = "The mother's prepregnancy weight"
  * entry[motherReceivedWICFood] only Reference(ObservationMotherReceivedWICFood)
    * ^short = "Use of the WIC nutritional program by the mother"
    * ^definition = "Use of the Women, Infant's, and Children (WIC) nutritional program by the mother during the pregnancy."
  * entry[cigaretteSmokingBeforeDuringPregnancy] only Reference(ObservationCigaretteSmokingBeforeDuringPregnancy)
    * ^short = "Cigarettes smoked by the mother before and during the pregnancy"
    * ^definition = "The number of cigarettes or packs of cigarettes the mother smoked 3 months before and at various intervals during the pregnancy"
* section[medicalHealthInformation] ^short = "Medical and Health Information section on the Fetal Death Report"
  * ^definition = "This section contains items from the Medical and Health Information section on the Fetal Death Report."
  * code 1.. MS
  * code = $loinc#55752-0
    * ^short = "Clinical information"
    * ^definition = "Clinical information"
  * focus 1.. MS
  * focus only Reference($Patient-mother-vr)
    * ^short = "The focus of this section is the mother"
    * ^definition = "The subject of the composition as a whole is the fetus baby. The focus of this section in the composition is the mother."
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the medical and health information section"
    * ^definition = "Entries that are contained in the medical and health information section"
  * entry contains
      numberPreviousCesareans 0..1 MS and
      fetalPresentation 0..1 MS and
      finalRouteMethodDelivery 0..1 MS
  * entry[pregnancyRiskFactors] only Reference($Condition-prepregnancy-diabetes-vr or $Condition-gestational-diabetes-vr or $Condition-prepregnancy-hypertension-vr or $Condition-gestational-hypertension-vr or $Condition-eclampsia-hypertension-vr or $Observation-previous-preterm-birth-vr or $Procedure-infertility-treatment-vr or $Procedure-artificial-insemination-vr or $Procedure-assissted-fertilization-vr or $Observation-previous-cesarean-vr or $Observation-none-of-specified-pregnancy-risk-factors-vr)
    * ^sliceName = "pregnancyRiskFactors"
    * ^short = "Risk factors in this pregnancy"
    * ^definition = "Selected medical risk factors of the mother during this pregnancy"
    * ^mustSupport = true
  * entry[numberPreviousCesareans] only Reference($Observation-number-previous-cesareans-vr)
    * ^short = "If mother had a previous cesarean delivery, how many"
    * ^definition = "Number of previous cesarean deliveries."
  * entry[fetalPresentation] only Reference(ObservationFetalPresentation)
    * ^short = "Fetal presentation at birth"
    * ^definition = "Fetal presentation at birth"
  * entry[finalRouteMethodDelivery] only Reference(ProcedureFinalRouteMethodDelivery)
    * ^short = "Final route and method of delivery"
    * ^definition = "Final route and method of delivery"
  * entry[maternalMorbidity] only Reference(ProcedureBloodTransfusion or ConditionPerinealLaceration or ConditionRupturedUterus or ProcedureUnplannedHysterectomy or ObservationICUAdmission or ProcedureEmergencyOperationFollowingDelivery or ObservationNoneOfSpecifiedMaternalMorbidities)
    * ^sliceName = "maternalMorbidity"
    * ^short = "Maternal morbidity (complications associated with labor and delivery)"
    * ^definition = "Serious complications experienced by the mother associated with labor and delivery"
    * ^mustSupport = true
* section[fetus] ^short = "fetus section on the Fetal Death Report"
  * ^definition = "This section contains items from the fetus section on the Fetal Death Report."
  * code 1.. MS
  * code = $loinc#76400-1
    * ^short = "Fetal delivery information Document [US Standard Report of Fetal Death]"
    * ^definition = "Fetal delivery information Document [US Standard Report of Fetal Death]"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the fetus section"
    * ^definition = "Entries that are contained in the fetus section"
  * entry contains
      deliveryWeight 0..1 MS and
      gestationalAgeAtDelivery 0..1 MS and
      causeOfFetalDeath 0..1 MS and
      estimatedTimeFetalDeath 1..1 MS and
      autopsyPerformed 0..1 MS and
      histologicalExamPerformed 0..1 MS and
      autopsyOrHistologicalExamUsed 0..1 MS and
      plurality 0..1 MS
  * entry[deliveryWeight] only Reference($Observation-birth-weight-vr)
    * ^short = "Delivery weight"
    * ^definition = "The weight of the infant/fetus at birth/delivery"
  * entry[gestationalAgeAtDelivery] only Reference($Observation-gestational-age-at-delivery-vr)
    * ^short = "Obstetric estimate of gestation"
    * ^definition = "The obstetric estimate of the infant’s gestation in completed weeks based on the birth/delivery attendant’s final estimate of gestation which should be determined by all perinatal factors and assessments such as ultrasound, but not the neonatal exam"
  * entry[causeOfFetalDeath] only Reference(ConditionFetalDeathCauseOrCondition)
    * ^short = "Initiating cause or condition of fetal death"
    * ^definition = "Initiating cause or condition of fetal death"
  * entry[otherCauseOfDeath] only Reference(ConditionFetalDeathOtherCauseOrCondition)
    * ^sliceName = "otherCauseOfDeath"
    * ^short = "Another significant cause or condition for the death of the fetus."
    * ^definition = "Another significant cause or condition for the death of the fetus."
    * ^mustSupport = true
  * entry[estimatedTimeFetalDeath] only Reference(ObservationFetalDeathTimePoint)
    * ^short = "The estimated time of fetal death; the time of death is characterized by the relationship to the time of delivery."
    * ^definition = "The estimated time of fetal death; the time of death is characterized by the relationship to the time of delivery."
  * entry[autopsyPerformed] only Reference($Observation-autopsy-performed-indicator-vr)
    * ^short = "An indication if an autopsy has been performed on the subject."
    * ^definition = "An indication if an autopsy has been performed on the subject."
  * entry[histologicalExamPerformed] only Reference(ObservationHistologicalPlacentalExamPerformed)
    * ^short = "Whether or not a histological placental examination was performed."
    * ^definition = "Whether or not a histological placental examination was performed."
  * entry[autopsyOrHistologicalExamUsed] only Reference(ObservationAutopsyHistologicalExamResultsUsed)
    * ^short = "Whether or not the results of a performed autopsy or a performed histological placental examination were used as part of determining the cause of death."
    * ^definition = "Whether or not the results of a performed autopsy or a performed histological placental examination were used as part of determining the cause of death."
  * entry[plurality] only Reference($Observation-plurality-vr)
    * ^short = "Plurality - Single, Twin, Triplet, etc."
    * ^definition = "Plurality – The number of fetuses delivered live or dead at any time in the pregnancy regardless of gestational age or if the fetuses were delivered at different dates in the pregnancy. ('Reabsorbed' fetuses, those which are not 'delivered' (expulsed or extracted from the mother) should not be counted.)"
* section[newbornInformation]
  * entry contains
      numberLiveBirthsThisDelivery 0..1 MS and
      numberFetalDeathsThisDelivery 0..1 MS
  * entry[numberLiveBirthsThisDelivery] only Reference($Observation-number-live-births-this-delivery-vr)
    * ^short = "Number of live births this delivery"
  * entry[numberFetalDeathsThisDelivery] only Reference($Observation-number-fetal-deaths-this-delivery-vr)
    * ^short = "Number of fetal deaths this delivery"
* section[motherInformation] ^short = "Mother administrative section on the Fetal Death Report"
  * ^definition = "This section contains items from the Mother administrative section on the Fetal Death Report."
  * code 1.. MS
  * code = $loinc#92014-0
    * ^short = "Mother's administrative information"
    * ^definition = "Mother's administrative information"
  * focus 1.. MS
  * focus only Reference($Patient-mother-vr)
    * ^short = "The focus of this section is the mother"
    * ^definition = "The subject of the composition as a whole is the fetus baby. The focus of this section in the composition is the mother."
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the motherInformation section"
    * ^definition = "Entries that are contained in the motherInformation section"
  * entry contains mothersEducation 0..1 MS
  * entry[mothersEducation] only Reference($Observation-parent-education-level-vr)
    * ^short = "Mother's education"
    * ^definition = "Mother's education"
* section[mothersQuestionnaireResponse] ^short = "Optional section containing a QuestionnaireResponse with recorded answers to the Questionnaire - Mother's Worksheet for Child's Birth Certificate"
  * code 1..
  * code = $loinc#74465-6
    * ^short = "Questionnaire response Document"
  * entry 1..1
  * entry only Reference(QuestionnaireResponse)
    * ^short = "QuestionnaireResponse with recorded answers to the Questionnaire - Mother's Worksheet for Child's Birth Certificate"