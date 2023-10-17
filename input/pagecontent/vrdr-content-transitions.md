# Death Record Submission



| Name of Profile  | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
|Death Certificate |   -  |    -    | [DeathCertificate] |     [DeathCertificateNew]         |   Updated to reference generalized profiles and valuesets in VRCL      |
|Decedent |   DecedentDemographics  |    -    | [Decedent] |       [DecedentNew]       |    Update partial dates and references, now based on [PatientVitalRecordsNew]     |
|Father |     DecedentDemographics    |    -    | [DecedentFather] |       -       |    -     |
|Mother |     DecedentDemographics    |    -    | [DecedentMother] |       -       |    -     |
|Spouse |     DecedentDemographics    |    -    | [DecedentSpouse] |       -       |    -     |
|Age at Death |     DecedentDemographics    |    -    | [DecedentAge] |       -       |    -     |
|BirthRecord ID |     DecedentDemographics    |    -    | [BirthRecordIdentifier] |       -       |    -     |
|Education Level |     DecedentDemographics    |    -    | [DecedentEducationLevel] |       [ObservationEducationLevelVitalRecordsNew]      |    -     |
|Military Service |    DecedentDemographics    |    -    | [DecedentMilitaryService] |       -       |    -     |
|Usual Work |     DecedentDemographics   |    -    | [DecedentUsualWork] |       -       |    -     |
| Emerging Issues |     DecedentDemographics   |    -    | [EmergingIssues] |       -       |    -     |
| Input Race and Ethnicity |     DecedentDemographics    |    -    | [InputRaceAndEthnicity] |       [InputRaceAndEthnicityNew]       |    -     |
| Examiner Contacted |     DeathInvestigation    |    -    | [ExaminerContacted] |       -       |    -     |
|Pregnancy Status |     DeathInvestigation    |    -    | [DecedentPregnancyStatus] |       [DecedentPregnancyStatusNew]       |    -     |
|Tobacco Use |     DeathInvestigation    |    -    | [TobaccoUseContributedToDeath] |       [TobaccoUseContributedToDeathNew]       |    -     |
|Death Location |     DeathInvestigation   |    -    | [DeathLocation] |       -       |    -     |
|Injury Location |     DeathInvestigation   |    -    | [InjuryLocation] |     -    |    -     |
|Injury Incident |     DeathInvestigation   |    -    | [InjuryIncident] |       [InjuryIncidentNew]       |    -     |
|Autopsy Performed Indicator|     DeathInvestigation   |    -    | [AutopsyPerformedIndicator] |       -       |    -     |
|Death Date |     DeathInvestigation   |    -    | [DeathDate] |       [DeathDateNew]       |    -     |
|Surgery Date |     DeathInvestigation   |    -    | [SurgeryDate] |       -       |    -     |
|Certifier |     DeathCertification   |    -    | [Certifier] |       [PractitionerVitalRecordsNew]      |    -     |
|Death Certification |     DeathCertification   |    -    | [DeathCertification] |       [DeathCertificationNew]       |    -     |
|Manner Of Death |     DeathInvestigation   |    -    | [MannerOfDeath] |       [MannerOfDeathNew]       |    -     |
|Cause Of Death Part1 |     DeathInvestigation   |    -    | [CauseOfDeathPart1] |  [CauseOfDeathPart1New]            |    -     |
|Cause Of Death Part2 |     DeathInvestigation   |    -    | [CauseOfDeathPart2] |   [CauseOfDeathPart2New]           |    -     |
|Disposition Method |     DecedentDisposition   |    -    | [DecedentDispositionMethod] |    [DecedentDispositionMethodNew]   |    -     |
|Disposition Location |     DecedentDisposition   |    -    | [DispositionLocation] |       |   Base on Consolidated Vital Records Location (with death, injury)?     |
|FuneralHome |     DecedentDisposition   |    -    | [FuneralHome] |        -      |    -     |
|Mortician |     DecedentDisposition   |    -    | [USCorePractitioner] |       -       |    -     |
{: .grid }


| Name of Extension  | change  |  Current Extension   | New Extension  | Comment |
| ------------------ | ------- | ------------------ | ------------ | ----- | 
|Partial Date  |    -    | [PartialDate] |    [ExtensionDatePartAbsentReasonVitalRecords]         |   -      |
|Partial Date Time  |    -    | [PartialDateTime] | [ExtensionPartialDateTimeVitalRecords]             |    -     |
{: .grid }

# Coded Cause of Death

| Name of Profile  | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
|ActivityAt Time Of Death|     CodedContent   |    -    | [ActivityAtTimeOfDeath] |       -       |    -     |
|Automated Underlying Cause Of Death |     CodedContent   |    -    | [AutomatedUnderlyingCauseOfDeath] |       -       |    -     |
|ManualUnderlyingCauseOfDeath |     CodedContent   |    -    | [ManualUnderlyingCauseOfDeath] |       -       |    -     |
|EntityAxisCauseOfDeath |     CodedContent   |    -    | [EntityAxisCauseOfDeath] |       -       |    -     |
|RecordAxisCauseOfDeath |     CodedContent   |    -    | [RecordAxisCauseOfDeath] |       -       |    -     |
|PlaceOfInjury |     CodedContent   |    -    | [PlaceOfInjury] |       -       |    -     |
|CodingStatusValues |     CodedContent   |    -    | [CodingStatusValues] |       -       |    -     |
|Cause Of Death Part1 |     InputContent   |    -    | [CauseOfDeathPart1] |  [CauseOfDeathPart1New]            |    -     |
|Cause Of Death Part2 |     InputContent   |    -    | [CauseOfDeathPart2] |   [CauseOfDeathPart2New]           |    -     |
|Manner Of Death |     InputContent   |    -    | [MannerOfDeath] |       [MannerOfDeathNew]       |    -     |
|Autopsy Performed Indicator|     InputContent   |    -    | [AutopsyPerformedIndicator] |       -       |    -     |
|Death Certification |     InputContent   |    -    | [DeathCertification] |       [DeathCertificationNew]       |    -     |
|Injury Incident |     InputContent   |    -    | [InjuryIncident] |       [OInjuryIncidentNew]       |    -     |
|Tobacco Use |     InputContent    |    -    | [TobaccoUseContributedToDeath] |       [TobaccoUseContributedToDeathNew]       |    -     |
|Pregnancy Status |     InputContent    |    -    | [DecedentPregnancyStatus] |       [DecedentPregnancyStatusNew]       |    -     |
|Surgery Date |     InputContent   |    -    | [SurgeryDate] |       -       |    -     |
{: .grid }

# Coded Race and Ethnicity

| Name of Profile  | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
| CodedRaceAndEthnicity |     CodedContent   |    -    | [CodedRaceAndEthnicity] |      [CodedRaceAndEthnicityNew]       |    -     |
| Input Race and Ethnicity |     InputContent    |    -    | [InputRaceAndEthnicity] |       [InputRaceAndEthnicityNew]       |    -     |
{: .grid }


{% include markdown-link-references.md %}