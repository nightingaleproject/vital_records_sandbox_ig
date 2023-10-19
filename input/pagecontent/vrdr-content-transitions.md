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
|Education Level |     DecedentDemographics    |    now based on [ObservationEducationLevelVitalRecordsNew] in VRCL     | [DecedentEducationLevel] |       -     |    -     |
|Military Service |    DecedentDemographics    |    -    | [DecedentMilitaryService] |       -       |    -     |
|Usual Work |     DecedentDemographics   |    -    | [DecedentUsualWork] |       -       |    -     |
| Emerging Issues |     DecedentDemographics   |    -    | [EmergingIssues] |       -       |    -     |
| Input Race and Ethnicity |     DecedentDemographics    |    -    | [InputRaceAndEthnicity] |       [InputRaceAndEthnicityNew]       |    -     |
| Examiner Contacted |     DeathInvestigation    |    -    | [ExaminerContacted] |       -       |    -     |
|Pregnancy Status |     DeathInvestigation    |    updated subject and VS    | [DecedentPregnancyStatus] |       [DecedentPregnancyStatusNew]       |    -     |
|Tobacco Use |     DeathInvestigation    |    updated subject (although they match exactly here)    | [TobaccoUseContributedToDeath] |       [TobaccoUseContributedToDeathNew]       |    -     |
|Death Location |     DeathInvestigation   |    -    | [DeathLocation] |       -       |    -     |
|Injury Location |     DeathInvestigation   |    -    | [InjuryLocation] |     -    |    -     |
|Injury Incident |     DeathInvestigation   |    constrained performer to [USCorePractitioner], updated value sets   | [InjuryIncident] |       [InjuryIncidentNew]       |    -     |
|Autopsy Performed Indicator|     DeathInvestigation   |    -    | [AutopsyPerformedIndicator] |       -       |    -     |
|Death Date |     DeathInvestigation   |    updated value sets, subject updated to [PatientVitalRecordsNew], performer constrained to [USCorePractitioner]   | [DeathDate] |       [DeathDateNew]       |    -     |
|Surgery Date |     DeathInvestigation   |    -    | [SurgeryDate] |       -       |    -     |
|Certifier |     DeathCertification   |    added birthAttendantQualification    | [Certifier] |       [PractitionerVitalRecordsNew]      |    -     |
|Death Certification |     DeathCertification   |    removed deprecated category and replaced Certifier with [PractitionerVitalRecordsNew]    | [DeathCertification] |       [DeathCertificationNew]       |    -     |
|Manner Of Death |     DeathInvestigation   |    replaced Certifier with [USCorePractitioner] and Decedent with [PatientVitalRecordsNew]  | [MannerOfDeath] |       [MannerOfDeathNew]       |    -     |
|Cause Of Death Part1 |     DeathInvestigation   |    added UnitsOfAgeVS, replaced Certifier with [USCorePractitioner] and Decedent with [PatientVitalRecordsNew]   | [CauseOfDeathPart1] |  [CauseOfDeathPart1New]            |    -     |
|Cause Of Death Part2 |     DeathInvestigation   |    replaced Certifier with [USCorePractitioner] and Decedent with [PatientVitalRecordsNew]    | [CauseOfDeathPart2] |   [CauseOfDeathPart2New]           |    -     |
|Disposition Method |     DecedentDisposition   |    subject is now [PatientVitalRecordsNew] (old profile was also updated here)   | [DecedentDispositionMethod] |    [DecedentDispositionMethodNew]   |    -     |
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
|Cause Of Death Part1 |     InputContent   |    see above    | [CauseOfDeathPart1] |  [CauseOfDeathPart1New]            |    -     |
|Cause Of Death Part2 |     InputContent   |    see above    | [CauseOfDeathPart2] |   [CauseOfDeathPart2New]           |    -     |
|Manner Of Death |     InputContent   |    see above    | [MannerOfDeath] |       [MannerOfDeathNew]       |    -     |
|Autopsy Performed Indicator|     InputContent   |    -    | [AutopsyPerformedIndicator] |       -       |    -     |
|Death Certification |     InputContent   |    see above    | [DeathCertification] |       [DeathCertificationNew]       |    -     |
|Injury Incident |     InputContent   |    see above   | [InjuryIncident] |       [InjuryIncidentNew]       |    -     |
|Tobacco Use |     InputContent    |    see above    | [TobaccoUseContributedToDeath] |       [TobaccoUseContributedToDeathNew]       |    -     |
|Pregnancy Status |     InputContent    |    see above    | [DecedentPregnancyStatus] |       [DecedentPregnancyStatusNew]       |    -     |
|Surgery Date |     InputContent   |    -    | [SurgeryDate] |       -       |    -     |
{: .grid }

# Coded Race and Ethnicity

| Name of Profile  | Group | change  |  Current Profile   | New Profile  | Comment |
| ------------- | ----- | ------- | ------------------ | ------------ | ----- | 
| CodedRaceAndEthnicity |     CodedContent   |    -    | [CodedRaceAndEthnicity] |      [CodedRaceAndEthnicityNew]       |    -     |
| Input Race and Ethnicity |     InputContent    |    -    | [InputRaceAndEthnicity] |       [InputRaceAndEthnicityNew]       |    -     |
{: .grid }


{% include markdown-link-references.md %}