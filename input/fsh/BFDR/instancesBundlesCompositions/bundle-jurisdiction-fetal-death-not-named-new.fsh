RuleSet: addentry(type, id)
* entry[+].resource = {id}
* entry[=].fullUrl = "http://www.example.org/fhir/{type}/{id}"

Instance: bundle-jurisdiction-fetal-death-not-named-new
InstanceOf: BundleDocumentBFDRNew
Title: "Bundle - Jurisdiction Fetal Death Report - Fetus Not Named"
Description: "Bundle - Jurisdiction Fetal Death Report: Fetus Not Named example"
Usage: #example
* meta
  * versionId = "48"
  * lastUpdated = "2023-07-07T02:39:34.215Z"
* identifier
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:9eeb1854-dee1-470a-9534-5cb25e18a323"
* type = #document
* timestamp = "2019-10-15T08:51:14.637+00:00"
* insert addentry(CompositionJurisdictionFetalDeathReportNew, composition-jurisdiction-fetal-death-not-named-new)
// * entry[0]
//   * fullUrl = "http://example.org/fhir/Composition/composition-jurisdiction-fetal-death-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-1
* insert addentry(PatientDecedentFetusNew, patient-decedent-fetus-not-named-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Patient/patient-decedent-fetus-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-2
* insert addentry(Encounter_Maternity, encounter-maternity-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Encounter/encounter-maternity-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-3
* insert addentry(Organization, organization-jurisdictional-vital-records-office)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Organization/organization-jurisdictional-vital-records-office"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-4
* insert addentry(PatientMotherNew, patient-mother-carmen-teresa-lee-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Patient/patient-mother-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-5
* insert addentry(ObservationPlannedToDeliverAtHome, observation-planned-to-deliver-at-home-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-planned-to-deliver-at-home-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-6
* insert addentry(ObservationDateOfFirstPrenatalCareVisit, observation-date-of-first-prenatal-care-visit-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-date-of-first-prenatal-care-visit-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-7
* insert addentry(ObservationLastMenstrualPeriodNew, observation-last-menstrual-period-carmen-teresa-lee-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-last-menstrual-period-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-8
* insert addentry(ObservationNumberBirthsNowLivingNew, observation-number-births-now-living-carmen-teresa-lee-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-number-births-now-living-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-9
* insert addentry(ObservationNumberBirthsNowDeadNew, observation-number-births-now-dead-carmen-teresa-lee-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-number-births-now-dead-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-10
* insert addentry(ObservationDateOfLastLiveBirth, observation-date-of-last-live-birth-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-date-of-last-live-birth-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-11
* insert addentry(ObservationMotherHeightNew, observation-mother-height-carmen-teresa-lee-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-mother-height-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-12
* insert addentry(ObservationMotherPrepregnancyWeightNew, observation-mother-prepregnancy-weight-carmen-teresa-lee-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-mother-prepregnancy-weight-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-13
* insert addentry(ObservationMotherReceivedWICFood, observation-mother-received-wic-food-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-mother-received-wic-food-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-14
* insert addentry(ObservationCigaretteSmokingBeforeDuringPregnancy, observation-cig-smoking-pregnancy-1-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-cig-smoking-pregnancy-1-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-15
* insert addentry(ObservationCigaretteSmokingBeforeDuringPregnancy, observation-cig-smoking-pregnancy-2-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-cig-smoking-pregnancy-2-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-16
* insert addentry(ObservationCigaretteSmokingBeforeDuringPregnancy, observation-cig-smoking-pregnancy-3-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-cig-smoking-pregnancy-3-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-17
* insert addentry(ObservationCigaretteSmokingBeforeDuringPregnancy, observation-cig-smoking-pregnancy-4-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-cig-smoking-pregnancy-4-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-18
* insert addentry(ObservationNumberPreviousCesareansNew, observation-number-previous-cesareans-carmen-teresa-lee-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-number-previous-cesareans-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-19
* insert addentry(ObservationFetalPresentation, observation-fetal-presentation-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-fetal-presentation-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-20
* insert addentry(ProcedureFinalRouteMethodDelivery, procedure-final-route-method-delivery-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Procedure/procedure-final-route-method-delivery-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-21
* insert addentry(ObservationBirthWeightNew, observation-birth-weight-not-named-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-birth-weight-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-22
* insert addentry(ObservationGestationalAgeAtDeliveryNew, observation-gestational-age-at-delivery-not-named-new)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-gestational-age-at-delivery-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-23
* insert addentry(ConditionFetalDeathCauseOrCondition, condition-fetal-death-cause-or-condition-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Condition/condition-fetal-death-cause-or-condition-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-24
* insert addentry(ConditionFetalDeathOtherCauseOrCondition, condition-fetal-death-other-significant-cause-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Condition/condition-fetal-death-other-significant-cause-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-25
* insert addentry(ObservationFetalDeathTimePoint, observation-fetal-death-time-point-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-fetal-death-time-point-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-26

// indicated that as observation, not Observation-autopsy-performed-indicator-vr
* insert addentry(Observation, observation-autopsy-performed-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-autopsy-performed-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-27
* insert addentry(ObservationHistologicalPlacentalExamPerformed, observation-histological-placental-exam-performed-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-histological-placental-exam-performed-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-28
* insert addentry(ObservationAutopsyHistologicalExamResultsUsed, observation-autopsy-histological-exam-results-used-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-autopsy-histological-exam-results-used-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-29

// possibly to be replaced by deaths @ birth
* insert addentry(Observation, observation-plurality-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-plurality-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-30
* insert addentry(Observation, observation-parent-education-level-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-parent-education-level-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-31
* insert addentry(ObservationEditFlagBirthweight, observation-edit-flag-delivery-wgt-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-edit-flag-delivery-wgt-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-32
* insert addentry(ObservationEditFlagEstimateOfGestation, observation-edit-flag-est-gestation-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-edit-flag-est-gestation-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-33
* insert addentry(ObservationEditFlagMothersDateOfBirth, observation-edit-flag-mothers-dob-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-edit-flag-mothers-dob-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-34
* insert addentry(ObservationEditFlagMothersEducation, observation-edit-flag-mothers-education-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-edit-flag-mothers-education-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-35
* insert addentry(ObservationEditFlagMothersHeight, observation-edit-flag-mothers-height-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-edit-flag-mothers-height-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-36
* insert addentry(ObservationEditFlagMothersPrepregnancyWeight, observation-edit-flag-mothers-prepreg-wgt-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-edit-flag-mothers-prepreg-wgt-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-37
* insert addentry(ObservationEditFlagNumberPreviousCesareans, observation-edit-flag-nbr-previous-cesareans-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-edit-flag-nbr-previous-cesareans-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-38
* insert addentry(ObservationEditFlagPlurality, observation-edit-flag-plurality-not-named)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Observation/observation-edit-flag-plurality-not-named"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-39
* insert addentry(Practitioner, practitioner-vital-records-janet-seito)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Practitioner/practitioner-vital-records-janet-seito"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-40
* insert addentry(USCoreLocation, location-south-hospital)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Location/location-south-hospital"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-41
* insert addentry(Organization, organization-south-hospital)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/Organization/organization-south-hospital"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-42
* insert addentry(RelatedPerson, relatedperson-mother-carmen-teresa-lee)
// * entry[+]
//   * fullUrl = "http://example.org/fhir/RelatedPerson/relatedperson-mother-carmen-teresa-lee"
//   * resource = Inline-Instance-for-bundle-jurisdiction-fetal-death-not-named-43