# MDI to EDRS
<!-- |Document MDI to EDRS (Bundle) |   Bundle |    -    | [] |     -         |   -      |
|MDI to EDRS (Composition)|   Composition  |    -    | [] |     -         |   -      | -->

| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| :-------------: | ----- | ------- | ------------------ | ------------ | :-----: |
|Decedent |  subject  |    -    | [USCorePatient] |  -  |   -      |
|Medical Examiner/Coroner (Certifier) |  author, attester  |    -    | [USCorePractitioner] |  -  |   -      |
|Death Location |  circumstances  |    -    | [LocationDeath] |  [LocationDeathVitalRecordsNew]  |   -      |
|Tobacco Use Contributed to Death |  circumstances  | - | [ObservationTobaccoUseContributedToDeath] |    [ObservationTobaccoUseContributedToDeathVitalRecordsNew] | - |
|Decedent Pregnancy |  circumstances  |    -    | [ObservationDecedentPregnancy] | [ObservationDecedentPregnancyVitalRecordsNew] | - |
|Injury Location |  circumstances  |    -    | [LocationInjury] | [LocationInjuryVitalRecordsNew] |   -      |
|Death Date |  jurisdiction  |    -    | [ObservationDeathDate] |  [ObservationDeathDateVitalRecordsNew]  |   -      |
|Death Certification |  jurisdiction  |    -    | [ProcedureDeathCertification] | [ProcedureDeathCertificationVitalRecordsNew] |  - |
|Cause of Death Part 1 |  cause-manner  |  -  | [ObservationCauseOfDeathPart1] | [ObservationCauseOfDeathPart1VitalRecordsNew] |   -   |
|Cause of Death Part 2 |   cause-manner  |    -    | [ObservationContributingCauseOfDeathPart2] | [ObservationCauseOfDeathPart2VitalRecordsNew] | - |
|Manner of Death |  cause-manner  |    -    | [ObservationMannerOfDeath] | [ObservationMannerOfDeathVitalRecordsNew] |   -      |
|How Death Injury Occurred | cause-manner |  -  | [ObservationHowDeathInjuryOccurred] | [ObservationInjuryIncidentVitalRecordsNew]  | - |
| history-condition | medical-history  |    -    | [USCoreConditionEncounterDiagnosis] or [USCoreConditionProblemsandHealthConcerns] |    -    |   -   |
|Autopsy Performed Indicator | exam-autopsy  |    -    | [ObservationAutopsyPerformedIndicator] |    -    |   -   |
|Autopsy Location | exam-autopsy  |    -    | [USCoreOrganization] or [USCoreLocation] |    -    |   -   |
{: .grid }

# Toxicology to MDI
<!-- |Message Toxicology to MDI Bundle | Bundle |    -    | [] |     -         |   -      |
|Toxicology to MDI MessageHeader | ToxtoMDIMessage |    -    | [] |     -         |   -      |
|Toxicology Lab Result to MDI | DiagnosticReport |    -    | [] |     -         |   -      |  -->

| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| :-------------: | ----- | ------- | ------------------ | ------------ | :-----: | 
|Responsible Diagnostic Service |  performer  |  - | [USCorePractitioner] or [USCorePractitionerRole] |  [USCorePractitioner] |   -  |
|Toxicology Lab Specimen |  specimen  |    -    | [SpecimenToxicologyLab] |     -         |   -      |
|Toxicology Lab Result | result  |    -    | [ObservationToxicologyLabResult] |     -         |   -      |
{: .grid }

<!-- # Administrative / Other
| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| :-------------: | ----- | ------- | ------------------ | ------------ | :-----: | 
|Document Reference: MDI Report | Administrative Profiles  |    -    | [] |     -         |   -      |
|Document Reference: MDI Report | Capability Statements  |    -    | [MessageDefinition-toxicology-system] |     -         |   -      |
{: .grid } -->


{% include markdown-link-references.md %}