Profile: CompositionMDIToEDRS
Parent: Composition
Id: Composition-mdi-to-edrs
Title: "Composition - MDI to EDRS"
Description: "This Composition profile represents data exchanged between an MDI CMS and an EDRS."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* extension contains ExtensionTrackingNumber named extension-tracking-numbers 0..* MS
* extension[extension-tracking-numbers] ^short = "A tracking number (e.g., case number or file number) assigned by an MDI or other organization to facilitate recognition of common case records across disparate systems"
  * ^definition = "A tracking number (e.g., case number or file number) assigned by an MDI or other organization to facilitate recognition of common case records across disparate systems"
* status MS
* type = $loinc#86807-5
* type MS
  * ^short = "MDI to EDRS (Death administrative information Document)"
  * ^definition = "MDI to EDRS"
* subject 1.. MS
* subject only Reference(USCorePatientProfile)
  * ^short = "The subject of the composition is the decedent."
  * ^definition = "The subject of the composition is the decedent."
* author ..1 MS
* author only Reference(USCorePractitionerProfile)
  * ^short = "Death certifier. If the author is not available, explain using data-absent-reason Extension"
* attester 1..1 MS
  * ^short = "Death certifier. If the attester is not available, explain using data-absent-reason Extension"
  * ^definition = "The certifying Medical Examiner/Coroner (Certifier)"
  * party only Reference(USCorePractitionerProfile)
  * party MS
* section 1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^short = "The Composition is broken into sections that, where possible, align with the sections in the 'Common data elements working document'. If no information for a required section, use emptyReason."
  * ^definition = "The Composition is broken into sections that, where possible, align with the sections in the 'Common data elements working document'."
* section contains
    additional-demographics 0..1 MS and
    circumstances 1..1 MS and
    jurisdiction 1..1 MS and
    cause-manner 1..1 MS and
    medical-history 1..1 MS and
    exam-autopsy 0..1 MS and
    narratives 0..1 MS
* section[additional-demographics] ^label = "This slice contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * ^short = "This slice contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * ^definition = "This section contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * code 1.. MS
  * code = CodeSystemMDI#demographics
    * ^definition = "Demographic information section"
    * text MS
  * text MS
* section[circumstances] ^label = "This slice contains circumstances of the death."
  * ^short = "This slice contains circumstances of the death."
  * ^definition = "This section contains circumstances of the death."
  * code 1.. MS
  * code = CodeSystemMDI#circumstances
    * ^definition = "Circumstances of the death section"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Circumstances section"
    * ^definition = "Entries that are contained in the Circumstances section"
  * entry[death-location] only Reference(LocationDeathVitalRecordsNew)
    * ^sliceName = "death-location"
    * ^label = "Apparent address where death actually occurred."
    * ^short = "Apparent address where death actually occurred."
    * ^definition = "Apparent address where death actually occurred."
    * ^mustSupport = true
  * entry[tobacco-use-contributed-to-death] only Reference(ObservationTobaccoUseContributedToDeathVitalRecordsNew)
    * ^sliceName = "tobacco-use-contributed-to-death"
    * ^label = "Whether or not tobacco use contributed to death."
    * ^short = "Whether or not tobacco use contributed to death."
    * ^definition = "Whether or not tobacco use contributed to death."
    * ^mustSupport = true
  * entry[decedent-pregnancy] only Reference(ObservationDecedentPregnancyVitalRecordsNew)
    * ^sliceName = "decedent-pregnancy"
    * ^label = "Pregnancy status of the decedent."
    * ^short = "Pregnancy status of the decedent."
    * ^definition = "Pregnancy status of the decedent."
    * ^mustSupport = true
  * entry[injury-location] only Reference(LocationInjuryVitalRecordsNew)
    * ^sliceName = "injury-location"
    * ^label = "Apparent address where injury occurred."
    * ^short = "Apparent address where injury occurred."
    * ^definition = "Apparent address where injury occurred."
  * emptyReason MS
* section[jurisdiction] ^label = "This slice contains jurisdictional information about the death."
  * ^short = "This slice contains jurisdictional information about the death."
  * ^definition = "This section contains jurisdictional information about the death."
  * code 1.. MS
  * code = CodeSystemMDI#jurisdiction
    * ^definition = "Jurisdiction section"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Jurisdiction section"
    * ^definition = "Entries that are contained in the Jurisdiction section"
  * entry contains death-certification 0..1 MS
  * entry[death-date] only Reference(ObservationDeathDateVitalRecordsNew)
    * ^sliceName = "death-date"
    * ^label = "The estimated and pronounced date of death"
    * ^short = "The estimated and pronounced date of death"
    * ^definition = "The estimated and pronounced date of death, also contains the death pronouncer practitioner"
    * ^mustSupport = true
  * entry[death-certification] only Reference(ProcedureDeathCertificationVitalRecordsNew)
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
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Cause-Manner section"
    * ^definition = "Entries that are contained in the Cause-Manner section"
  * entry contains
      cause 0..4 MS and
      other-condition 0..1 MS and
      manner 0..1 MS and
      how-injury 0..1 MS
  * entry[cause] only Reference(ObservationCauseOfDeathPart1VitalRecordsNew)
    * ^label = "Up to 4 lines of cause of death."
    * ^short = "Up to 4 lines of cause of death."
    * ^definition = "Up to 5 lines of cause of death providing the ordered chain of events with a causal relationship to the decedent’s death."
  * entry[other-condition] only Reference(ObservationCauseOfDeathPart2VitalRecordsNew)
    * ^short = "Other significant conditions contributing to death but not resulting in the underlying cause."
    * ^definition = "Other significant conditions contributing to death but not resulting in the underlying cause."
  * entry[manner] only Reference(ObservationMannerOfDeathVitalRecordsNew)
    * ^short = "Manner of death."
    * ^definition = "The conclusion arrived at upon completion of death investigation regarding the manner of death."
  * entry[how-injury] only Reference(ObservationInjuryIncidentVitalRecordsNew)
    * ^short = "Certified explanation of how injury occurred."
    * ^definition = "Certified explanation of how injury occurred."
  * emptyReason MS
* section[medical-history] ^label = "This slice contains relevant medical history about the decedent."
  * ^short = "This slice contains relevant medical history about the decedent."
  * ^definition = "This section contains relevant medical history about the decedent."
  * code 1.. MS
  * code = CodeSystemMDI#medical-history
    * ^definition = "Medical history section"
  * text MS
    * ^label = "Narrative medical condition"
    * ^short = "Narrative medical condition"
    * ^definition = "Narrative medical condition"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
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
  * code 1.. MS
  * code = CodeSystemMDI#exam-autopsy
    * ^definition = "Exam/Autopsy section"
  * text ..1 MS
    * ^label = "Description of autopsy findings"
    * ^short = "Description of autopsy findings"
    * ^definition = "Description of autopsy findings"
  * entry ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
  * entry contains autopsy-performed 0..* MS
  * entry[autopsy-performed] only Reference(ObservationAutopsyPerformedIndicator)
    * ^label = "If autopsy was performed, if autopsy findings are available, and the autopsy Performer"
    * ^short = "If autopsy was performed, if autopsy findings are available, and the autopsy Performer"
    * ^definition = "If autopsy was performed, if autopsy findings are available, and the autopsy Performer"
  * entry[autopsy-location] only Reference(USCoreOrganizationProfile or USCoreLocation)
    * ^sliceName = "autopsy-location"
    * ^label = "If autopsy was performed, location"
    * ^short = "If autopsy was performed, location"
    * ^definition = "If autopsy was performed, location"
    * ^mustSupport = true
* section[narratives] ^label = "This slice contains additional death investigation narrative descriptions."
  * ^short = "This slice contains additional death investigation narrative descriptions."
  * ^definition = "This slice contains additional death investigation narrative descriptions."
  * code = CodeSystemMDI#narratives
  * code MS
  * text MS
    * ^label = "Additional death investigation narrative descriptions."
    * ^short = "Additional death investigation narrative descriptions."
    * ^definition = "Additional death investigation narrative descriptions."