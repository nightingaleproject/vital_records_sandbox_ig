# MDI to EDRS
<!-- |Document MDI to EDRS (Bundle) |   Bundle |    -    | [] |     -         |   -      |
|MDI to EDRS (Composition)|   Composition  |    -    | [] |     -         |   -      | -->

| Name of Profile | Group | Change         |  Current Profile   | New Profile  | Comment |
| :-------------: | ----- | -------------- | ------------- | ------------ | :-----: |
|Decedent |  subject  |    -    | [USCorePatient] |  -  |   not creating a new common profile   |
|Medical Examiner/Coroner (Certifier) |  author, attester  |    -    | [USCorePractitioner] |  -  |   not creating a new common profile    |
|Death Location |  circumstances  |    Removal of MS flags, inclusion of consolidated code system, inclusion of city and county extensions to accomodate VRDR, replacement of address text with state code     | [LocationDeath] |  [LocationDeathVitalRecordsNew]  |  -  |
|Tobacco Use Contributed to Death |  circumstances  | Removal of MS flags, inclusion of common value set | [ObservationTobaccoUseContributedToDeath] |    [ObservationTobaccoUseContributedToDeathVitalRecordsNew] | - |
|Decedent Pregnancy |  circumstances  |   Removal of MS flags, inclusion of consolidated value set to include missing value, inclusion of bypass edit flag extensions   | [ObservationDecedentPregnancy] | [ObservationDecedentPregnancyVitalRecordsNew] | - |
|Injury Location |  circumstances  |    Removal of MS flags, inclusion of consolidated code system, inclusion of city and county extensions to accomodate VRDR, replacement of address text with state code    | [LocationInjury] | [LocationInjuryVitalRecordsNew] |  -  |
|Death Date |  jurisdiction  |   Removal of MS flags, inclusion of consolidated partial date time extension, inclusion of consolidated value sets for place of death and date establishment approach, components for place and time of death are limited to one value  | [ObservationDeathDate] |  [ObservationDeathDateVitalRecordsNew]  |   -      |
|Death Certification |  jurisdiction  |    Removal of MS flags, inclusion of consolidated value set for certifier types   | [ProcedureDeathCertification] | [ProcedureDeathCertificationVitalRecordsNew] |  - |
|Cause of Death Part 1 |  cause-manner  |  Removal of MS flags, removed performer cardinality, Cause of Death Part 1, Line a,b,c,d text is no longer part of a slice definition (just codeable concept)  | [ObservationCauseOfDeathPart1] | [ObservationCauseOfDeathPart1VitalRecordsNew] |   performer cardinality in MDI is 1..1, removal of cardinality prompts inheritance of 0..1 from observation profile  |
|Cause of Death Part 2 |   cause-manner  |   Removal of MS flags   | [ObservationContributingCauseOfDeathPart2] | [ObservationCauseOfDeathPart2VitalRecordsNew] | - |
|Manner of Death |  cause-manner  |   Removal of MS flags, performer cardinality relaxed to 0..1 (observation default)   | [ObservationMannerOfDeath] | [ObservationMannerOfDeathVitalRecordsNew] |   -      |
|How Death Injury Occurred | cause-manner |  Removal of MS flags, performer cardinality relaxed to 0..1 (observation default), inclusion of common partial date time extension, inclusion of common yes, no, unknown, not applicable value set for work injury indicator, inclusion of common transportation incident value set   | [ObservationHowDeathInjuryOccurred] | [ObservationInjuryIncidentVitalRecordsNew]  | - |
| Coded medical conditions | medical-history  |    -    | [USCoreConditionEncounterDiagnosis] or [USCoreConditionProblemsandHealthConcerns] |    -    |   not creating a new common profile   |
|Autopsy Performed Indicator | exam-autopsy  |    -    | [ObservationAutopsyPerformedIndicator] |    -    |   profile with same/similar name is dissimilar across other profiles   |
|Autopsy Location | exam-autopsy  |    -    | [USCoreOrganization] or [USCoreLocation] |    -    |   not creating a new common profile   |
{: .grid }

# Toxicology to MDI
<!-- |Message Toxicology to MDI Bundle | Bundle |    -    | [] |     -         |   -      |
|Toxicology to MDI MessageHeader | ToxtoMDIMessage |    -    | [] |     -         |   -      |
|Toxicology Lab Result to MDI | DiagnosticReport |    -    | [] |     -         |   -      |  -->

| Name of Profile | Group | Change         |  Current Profile   | New Profile  | Comment |
| :-------------: | ----- | -------------- | ------------- | ------------ | :-----: | 
|Performer |  performer  |  - | [USCorePractitioner] or [USCorePractitionerRole] | - |   not creating a new common profile  |
|Decedent |  subject  |    -    | [USCorePatient] |  -  |   not creating a new common profile   |
|Toxicology Lab Specimen |  specimen  |    -    | [SpecimenToxicologyLab] |     -         |   -      |
|Toxicology Lab Result | result  |    -    | [ObservationToxicologyLabResult] |     -         |   -      |
{: .grid }

<!-- # Administrative / Other
| Name of Profile | Group | change  |  Current Profile   | New Profile  | Comment |
| :-------------: | ----- | ------- | ------------------ | ------------ | :-----: | 
|Document Reference: MDI Report | Administrative Profiles  |    -    | [] |     -         |   -      |
|MessageDefinitionToxicologySystem  | Capability Statements  |    -    | [MessageDefinition-toxicology-system] |     -         |   -      |
{: .grid } -->


{% include markdown-link-references.md %}