RuleSet: CompositionSectionEntrySlicingMDI(section)
* section contains {section} 0..1
* section[{section}].code = CodeSystemMDI#{section}
* section[{section}] ^label = "{section}"
* section[{section}] ^short = "{section}"
* section[{section}].entry ^slicing.discriminator.type = #profile
* section[{section}].entry ^slicing.discriminator.path = "$this.resolve()"
* section[{section}].entry ^slicing.rules = #open


Profile: CompositionMDIToEDRSNew
Parent: Composition
Id: Composition-mdi-to-edrs-new
Title: "Composition - MDI to EDRS"
Description: "This Composition profile represents data sent from an MDI information management system to an EDRS."
* extension contains ExtensionTrackingNumber named extension-tracking-numbers 0..* MS
* extension[extension-tracking-numbers] ^short = "A tracking number, such as a case number or file number assigned by a case management system or EDRS."
  * ^definition = "A tracking number, such as a case number or file number assigned by a case management system or EDRS, and can represent other tracking numbers, if required."
* identifier 1.. MS
  * ^short = "System-generated identifier for this Composition."
  * ^definition = "System-generated identifier for this Composition."
* status MS
* type = $loinc#86807-5
* type MS
  * ^short = "MDI to EDRS (Death administrative information Document)"
  * ^definition = "MDI to EDRS"
* subject 1.. MS
* subject only Reference(PatientVitalRecordsNew)
  * ^short = "The subject of the composition is the decedent."
  * ^definition = "The subject of the composition is the decedent."
* author ..* MS
* author only Reference(PractitionerVitalRecordsNew)
  * ^short = "The author is the medical examiner/coroner (ME/C) responsible for the case. There can be multiple ME/Cs per case."
  * ^definition = "The author is the medical examiner/coroner (ME/C) responsible for the case. There can be multiple ME/Cs per case."
* attester 1..1 MS
  * ^short = "The certifying Medical Examiner/Coroner (Certifier)"
  * ^definition = "The certifying Medical Examiner/Coroner (Certifier)"
  * extension ..1 MS
  * extension only $data-absent-reason
    * ^short = "If attester is not yet named, use data absent reason"
  * party only Reference(PractitionerVitalRecordsNew)
  * party MS
* section 1.. MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^short = "The Composition is broken into sections that, where possible, align with the sections in the 'Common data elements working document'."
  * ^definition = "The Composition is broken into sections that, where possible, align with the sections in the 'Common data elements working document'."
  * code 1..1
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
* insert CompositionSectionEntrySlicingMDI(demographics)
* insert CompositionSectionEntrySlicingMDI(circumstances)
* insert CompositionSectionEntrySlicingMDI(jurisdiction)
* insert CompositionSectionEntrySlicingMDI(cause-manner)
* insert CompositionSectionEntrySlicingMDI(medical-history)
* insert CompositionSectionEntrySlicingMDI(exam-autopsy)
* insert CompositionSectionEntrySlicingMDI(narratives )

* section[demographics] ^label = "This slice contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * ^short = "This slice contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * ^definition = "This section contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * code // = CodeSystemMDI#demographics
    * ^definition = "Demographic information section"
    * text MS
  * text MS
* section[circumstances] ^label = "This slice contains circumstances of the death."
  * ^short = "This slice contains circumstances of the death."
  * ^definition = "This section contains circumstances of the death."
  * code // = CodeSystemMDI#circumstances
    * ^definition = "Circumstances of the death section"
  * entry MS
    * ^short = "Entries that are contained in the Circumstances section"
    * ^definition = "Entries that are contained in the Circumstances section"
  * emptyReason MS
* insert BundleSectionSlice(circumstances, death-location, 0, 1,  [[Apparent address where death actually occurred.]],  [[Apparent address where death actually occurred.]], DeathLocation )
* insert BundleSectionSlice(circumstances, tobacco-use-contributed-to-death, 0, 1,  [[Whether or not tobacco use contributed to death.]],  [[Whether or not tobacco use contributed to death.]], TobaccoUseContributedToDeathNew )
* insert BundleSectionSlice(circumstances, decedent-pregnancy, 1, 1,  [[Pregnancy status of the decedent.]],  [[Pregnancy status of the decedent.]], DecedentPregnancyStatusNew )
* insert BundleSectionSlice(circumstances, injury-location, 1, 1,  [[Apparent address where injury occurred.]],  [[Apparent address where injury occurred.]], InjuryLocation )

  //  * entry[death-location] only Reference(DeathLocation)
  //   * ^sliceName = "death-location"
  //   * ^label = "Apparent address where death actually occurred."
  //   * ^short = "Apparent address where death actually occurred."
  //   * ^definition = "Apparent address where death actually occurred."
  //   * ^mustSupport = true
  // * entry[tobacco-use-contributed-to-death] only Reference(TobaccoUseContributedToDeathNew)
  //   * ^sliceName = "tobacco-use-contributed-to-death"
  //   * ^label = "Whether or not tobacco use contributed to death."
  //   * ^short = "Whether or not tobacco use contributed to death."
  //   * ^definition = "Whether or not tobacco use contributed to death."
  //   * ^mustSupport = true
  // * entry[decedent-pregnancy] only Reference(DecedentPregnancyStatusNew)
  //   * ^sliceName = "decedent-pregnancy"
  //   * ^label = "Pregnancy status of the decedent."
  //   * ^short = "Pregnancy status of the decedent."
  //   * ^definition = "Pregnancy status of the decedent."
  //   * ^mustSupport = true
  // * entry[injury-location] only Reference(InjuryLocation)
  //   * ^sliceName = "injury-location"
  //   * ^label = "Apparent address where injury occurred."
  //   * ^short = "Apparent address where injury occurred."
  //   * ^definition = "Apparent address where injury occurred."

* section[jurisdiction] ^label = "This slice contains jurisdictional information about the death."
  * ^short = "This slice contains jurisdictional information about the death."
  * ^definition = "This section contains jurisdictional information about the death."
  * code = CodeSystemMDI#jurisdiction
    * ^definition = "Jurisdiction section"
  * entry MS
    * ^short = "Entries that are contained in the Jurisdiction section"
    * ^definition = "Entries that are contained in the Jurisdiction section"
  * entry contains
     death-certification 0..1 MS and 
     death-date 0..1 MS 
  * entry[death-date] only Reference(DeathDateNew)
    * ^sliceName = "death-date"
    * ^label = "The estimated and pronounced date of death, also contains the death pronouncer practitioner"
    * ^short = "The estimated and pronounced date of death, also contains the death pronouncer practitioner"
    * ^definition = "The estimated and pronounced date of death, also contains the death pronouncer practitioner"
    * ^mustSupport = true
  * entry[death-certification] only Reference(DeathCertificationNew)
    * ^label = "The procedure where the certification of death was performed by the certifier."
    * ^short = "The procedure where the certification of death was performed by the certifier."
    * ^definition = "The procedure where the certification of death was performed by the certifier."
  * emptyReason MS
* section[cause-manner] ^label = "This slice contains information about the cause and manner of death."
  * ^short = "This slice contains information about the cause and manner of death."
  * ^definition = "This section contains information about the cause and manner of death."
  * code 1.. MS
  * code = CodeSystemMDI#cause-manner
    * ^definition = "Cause and manner of death section"
  * entry MS
    * ^short = "Entries that are contained in the Cause-Manner section"
    * ^definition = "Entries that are contained in the Cause-Manner section"
  * entry contains
      cause 0..4 MS and
      other-condition 0..1 MS and
      manner 0..1 MS and
      how-injury 0..1 MS
  * entry[cause] only Reference(CauseOfDeathPart1New)
    * ^label = "Up to 4 lines of cause of death."
    * ^short = "Up to 4 lines of cause of death."
    * ^definition = "Up to 5 lines of cause of death providing the ordered chain of events with a causal relationship to the decedent’s death."
  * entry[other-condition] only Reference(CauseOfDeathPart2New)
    * ^short = "Other significant conditions contributing to death but not resulting in the underlying cause."
    * ^definition = "Other significant conditions contributing to death but not resulting in the underlying cause."
  * entry[manner] only Reference(MannerOfDeathNew)
    * ^short = "Manner of death."
    * ^definition = "The conclusion arrived at upon completion of death investigation regarding the manner of death."
  * entry[how-injury] only Reference(InjuryIncidentNew)
    * ^short = "Certified explanation of how injury occurred."
    * ^definition = "Certified explanation of how injury occurred."
  * emptyReason MS
* section[medical-history] ^label = "This slice contains relevant medical history about the decedent."
  * ^short = "This slice contains relevant medical history about the decedent."
  * ^definition = "This section contains relevant medical history about the decedent."
  * code = CodeSystemMDI#medical-history
    * ^definition = "Medical history section"
  * text MS
    * ^label = "Narrative medical condition"
    * ^short = "Narrative medical condition"
    * ^definition = "Narrative medical condition"
  * entry MS
  * entry contains
    history-condition 0..1 MS
  * entry[history-condition] only Reference(USCoreConditionEncounterDiagnosisProfile or USCoreConditionProblemsHealthConcernsProfile)
    * ^sliceName = "history-condition"
    * ^label = "Coded medical conditions"
    * ^short = "Coded medical conditions"
    * ^definition = "Coded medical conditions"
    * ^mustSupport = true
  * emptyReason MS
* section[exam-autopsy] ^label = "This slice contains exam and autopsy information."
  * ^short = "This slice contains exam and autopsy information."
  * ^definition = "This section contains exam and autopsy information."
  * code = CodeSystemMDI#exam-autopsy
    * ^definition = "Exam/Autopsy section"
  * text ..1 MS
    * ^label = "Description of autopsy findings"
    * ^short = "Description of autopsy findings"
    * ^definition = "Description of autopsy findings"
  * entry contains autopsy-performed 0..* MS
  * entry[autopsy-performed] only Reference(ObservationAutopsyPerformedIndicator)
    * ^label = "If autopsy was performed, if autopsy findings are available, and the autopsy Performer"
    * ^short = "If autopsy was performed, if autopsy findings are available, and the autopsy Performer"
    * ^definition = "If autopsy was performed, if autopsy findings are available, and the autopsy Performer"
* section[narratives] ^label = "This slice contains additional death investigation narrative descriptions."
  * ^short = "This slice contains additional death investigation narrative descriptions."
  * ^definition = "This slice contains additional death investigation narrative descriptions."
  * code = CodeSystemMDI#narratives
  * code MS
  * text MS
    * ^label = "Additional death investigation narrative descriptions."
    * ^short = "Additional death investigation narrative descriptions."
    * ^definition = "Additional death investigation narrative descriptions."