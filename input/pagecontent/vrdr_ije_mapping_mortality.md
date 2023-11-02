
### Death Record IJE Mapping

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set/Comments** |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 109 | Was Autopsy performed | AUTOP| [AutopsyPerformedIndicator]|value | codeable | [ValueSetYesNoUnknownVitalRecords] | 
| 110 | Were Autopsy Findings Available to Complete the Cause of Death? | AUTOPF| [AutopsyPerformedIndicator]|component[ autopsyResultsAvailable ].value | codeable | [ValueSetYesNoUnknownNotApplicableVitalRecords] | 
| 88 | Infant Death/Birth Linking - birth certificate number | BCNO| [BirthRecordIdentifier]|value | string(6) | - | 
| 89 | Infant Death/Birth Linking - year of birth | IDOB_YR| [BirthRecordIdentifier]|component[birthYear].value | dateTime | YYYY component | 
| 90 | Infant Death/Birth Linking - State, U.S. Territory or Canadian Province of Birth - code | BSTATE| [BirthRecordIdentifier]|component[birthJurisdiction].value | string | [ValueSetJurisdictionsProvincesVitalRecords] | 
| 185 | Cause of Death Part I Line a | COD1A| [CauseOfDeathPart1]|value.text,   component[lineNumber] = 1 | string(120) | - | 
| 186 | Cause of Death Part I Interval, Line a | INTERVAL1A| [CauseOfDeathPart1]|component[interval].value, component[lineNumber] = 1 | string(20) | - | 
| 187 | Cause of Death Part I Line b | COD1B| [CauseOfDeathPart1]|value.text,   component[lineNumber] = 2 | string(120) | - | 
| 188 | Cause of Death Part I Interval, Line b | INTERVAL1B| [CauseOfDeathPart1]|component[interval].value, component[lineNumber] = 2 | string(20) | - | 
| 189 | Cause of Death Part I Line c | COD1C| [CauseOfDeathPart1]|value.text,   component[lineNumber] = 3 | string(120) | - | 
| 190 | Cause of Death Part I Interval, Line c | INTERVAL1C| [CauseOfDeathPart1]|component[interval].value, component[lineNumber] = 3 | string(20) | - | 
| 191 | Cause of Death Part I Line d | COD1D| [CauseOfDeathPart1]|value.text,   component[lineNumber] = 4 | string(120) | - | 
| 192 | Cause of Death Part I Interval, Line d | INTERVAL1D| [CauseOfDeathPart1]|component[interval].value, component[lineNumber] = 4 | string(20) | - | 
| 193 | Cause of Death Part II | OTHERCONDITION| [CauseOfDeathPart2]|value.text | string(240) | - | 
| 220 | Certifier's First Name | CERTFIRST| [Certifier]|name.given , name.use = official | string | - | 
| 221 | Certifier's Middle Name | CERTMIDDLE| [Certifier]|name.given , name.use = official | string | - | 
| 222 | Certifier's Last Name | CERTLAST| [Certifier]|name.family , name.use = official | string | - | 
| 223 | Certifier's Suffix Name | CERTSUFFIX| [Certifier]|name.suffix , name.use = official | string | - | 
| 224 | Certifier - Street number | CERTSTNUM| [Certifier]|address.extension[stnum] | string | - | 
| 225 | Certifier - Pre Directional | CERTPREDIR| [Certifier]|address.extension[predir] | string | - | 
| 226 | Certifier - Street name | CERTSTRNAME| [Certifier]|address.extension[stname] | string | - | 
| 227 | Certifier - Street designator | CERTSTRDESIG| [Certifier]|address.extension[stdesig] | string | - | 
| 228 | Certifier - Post Directional | CERTPOSTDIR| [Certifier]|address.extension[postdir] | string | - | 
| 229 | Certifier - Unit or apt number | CERTUNITNUM| [Certifier]|address.extension[unitnum] | string | - | 
| 230 | Long string address for Certifier same as above but allows states to choose the way they capture information. | CERTADDRESS| [Certifier]|address.line  | string | - | 
| 231 | Certifier - City or Town name | CERTCITYTEXT| [Certifier]|address.city  | string | - | 
| 232 | State, U.S. Territory or Canadian Province of Certifier - code | CERTSTATECD| [Certifier]|address.state | string | [ValueSetStatesTerritoriesAndProvincesVitalRecords] | 
| 233 | State, U.S. Territory or Canadian Province of Certifier - literal | CERTSTATE| [Certifier]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 234 | Certifier - Zip | CERTZIP| [Certifier]|address.postalCode | string | - | 
| 6 | Source flag: paper/electronic | MFILED| [DeathCertificate]|extension[ filingFormat]  | codeable |  [FilingFormatVS] | 
| 96 | Date of Registration--Year | DOR_YR| [DeathCertificate]|date | dateTime | - | 
| 97 | Date of Registration--Month | DOR_MO| [DeathCertificate]|date | dateTime | - | 
| 98 | Date of Registration--Day | DOR_DY| [DeathCertificate]|date | dateTime | - | 
| 122 | State Specific Data  | STATESP| [DeathCertificate]|extension[ stateSpecificField] | string(30) | - | 
| 184 | Replacement Record  | REPLACE (*deprecated*)| [DeathCertificate]|extension[ replaceStatus ].value | codeable | [ReplaceStatusVS] | 
| 3 | Certificate Number | FILENO| [DeathCertificateDocument]|identifier.extension[ certificateNumber].value | string(6) | - | 
| 5 | Auxiliary State file number | AUXNO| [DeathCertificateDocument]|identifier.extension[ auxiliaryStateIdentifier1 ].value | string(12) | - | 
| 121 | Auxiliary State file number | AUXNO2| [DeathCertificateDocument]|identifier.extension[ auxiliaryStateIdentifier2 ].value | string(12) | - | 
| NA | Death Record Identifier | *NO IJE MAPPING*| [DeathCertificateDocument]|identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
| 1 | Date of Death--Year | DOD_YR| [DeathDate]|value | dateTime | Required for processing | 
| 31 | Place of Death | DPLACE| [DeathDate]|component[placeOfDeath].value | codeable | [PlaceOfDeathVS] | 
| 34 | Date of Death--Month | DOD_MO| [DeathDate]|value | dateTime | See [PartialDatesAndTimes] | 
| 35 | Date of Death--Day | DOD_DY| [DeathDate]|value | dateTime | See [PartialDatesAndTimes] | 
| 36 | Time of Death | TOD| [DeathDate]|value | dateTime | See [PartialDatesAndTimes] | 
| 218 | Person Pronouncing Date Signed | PPDATESIGNED| [DeathDate]|component[datetimePronouncedDead ].valueDateTime | dateTime | See [PartialDatesAndTimes] | 
| 219 | Person Pronouncing Time Pronounced | PPTIME| [DeathDate]|component[datetimePronouncedDead].valueDateTime if a date is also specified, or component[datetimePronouncedDead].valueTime if no date is specified | dateTime or time | See [PartialDatesAndTimes] | 
| 119 | Title of Certifier | CERTL| [DeathCertification]|performer.function (note that if value is "OTH" then performed.function.text should contain 'Full Text for Other Individual Legally Allowed to Certify') | codeable | [CertifierTypesVS] | 
| 235 | Certifier Date Signed | CERTDATE| [DeathCertification]|performed | dateTime | - | 
| 2 | State, U.S. Territory or Canadian Province of Death - code | DSTATE| [DeathLocation]|address.state or address.state.extension[nationalReportingJurisdictionId ] | codeable | [ValueSetStatesTerritoriesAndProvincesVitalRecords] in state field or [ValueSetJurisdictionVitalRecords] in extension | 
| 32 | County of Death Occurrence | COD| [DeathLocation]|address.district.extension[ districtCode ] | integer | see [CountyCodes] | 
| 129 | Death Institution name | DINSTI| [DeathLocation]|name | string  | - | 
| 130 | Long String address for place of death | ADDRESS_D| [DeathLocation]|address.line | string  | - | 
| 131 | Place of death. Street number | STNUM_D| [DeathLocation]|address.extension[stnum] | string | - | 
| 132 | Place of death. Pre Directional | PREDIR_D| [DeathLocation]|address.extension[predir] | string | - | 
| 133 | Place of death. Street name | STNAME_D| [DeathLocation]|address.extension[stname] | string | - | 
| 134 | Place of death. Street designator | STDESIG_D| [DeathLocation]|address.extension[stdesig] | string | - | 
| 135 | Place of death. Post Directional | POSTDIR_D| [DeathLocation]|address.extension[postdir] | string | - | 
| 136 | Place of death. City or Town name | CITYTEXT_D| [DeathLocation]|address.city | string | - | 
| 137 | Place of death. State name literal | STATETEXT_D| [DeathLocation]|address.state (expanded from 2 letter code) | string | - | 
| 138 | Place of death. Zip code | ZIP9_D| [DeathLocation]|address.postalCode | string | - | 
| 139 | Place of death. County of Death | COUNTYTEXT_D| [DeathLocation]|address.district | string | - | 
| 140 | Place of death. City FIPS code | CITYCODE_D| [DeathLocation]|address.city.extension[ cityCode] | integer | see [CityCodes] | 
| 141 | Place of death. Longitude | LONG_D| [DeathLocation]|position.longitude | float | - | 
| 142 | Place of Death. Latitude | LAT_D| [DeathLocation]|position.latitude | float | - | 
| 239 | Country of Death - Code | DTHCOUNTRYCD| [DeathLocation]|address.country  | string  | [ValueSetResidenceCountryVitalRecords].  Note: For US Death certificates should be US | 
| 240 | Country of Death - Literal | DTHCOUNTRY| [DeathLocation]|address.country  (expanded from 2 letter code) | string  | See [CountryLiterals].   Not used. For US Death certificates should be 'United States'. | 
| 7 | Decedent's Legal Name--Given  | GNAME| [Decedent]|name.given , name.use = official | string | - | 
| 8 | Decedent's Legal Name--Middle | MNAME| [Decedent]|name.given , name.use = official (first letter) | string | - | 
| 9 | Decedent's Legal Name--Last | LNAME| [Decedent]|name.family , name.use = official. (absence is equivalent to 'UNKNOWN'.) | string | - | 
| 10 | Decedent's Legal Name--Suffix | SUFF| [Decedent]|name.suffix , name.use = official | string | - | 
| 13 | Sex | SEX| [Decedent]|extension[NVSS-SexAtDeath]  | codeable | [ValueSetAdministrativeGenderVitalRecords] | 
| NA | Gender | *NO IJE MAPPING*| [Decedent]|gender | codeable | [ValueSetAdministrativeGenderVitalRecords](http://hl7.org/fhir/R4/valueset-administrative-gender.html) - See [Note on Decedent Gender] | 
| 15 | Social Security Number | SSN| [Decedent]|identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SB" | string | - | 
| 19 | Date of Birth--Year | DOB_YR| [Decedent]|birthDate | dateTime | See [PartialDatesAndTimes] | 
| 20 | Date of Birth--Month | DOB_MO| [Decedent]|birthDate | dateTime | See [PartialDatesAndTimes] | 
| 21 | Date of Birth--Day | DOB_DY| [Decedent]|birthDate | dateTime | See [PartialDatesAndTimes] | 
| 22 | Birthplace--Country | BPLACE_CNT| [Decedent]|extension[patient-birthPlace].value[x].country  | string | [ValueSetBirthplaceCountryVitalRecords] | 
| 23 | State, U.S. Territory or Canadian Province of Birth - code | BPLACE_ST| [Decedent]|extension[patient-birthPlace].value[x].state | string | [ValueSetStatesTerritoriesAndProvincesVitalRecords] | 
| 24 | Decedent's Residence--City | CITYC| [Decedent]|address.city.extension[ cityCode ] | integer | see [CityCodes] | 
| 25 | Decedent's Residence--County | COUNTYC| [Decedent]|address.district.extension[ districtCode ] | integer | see [CountyCodes] | 
| 26 | State, U.S. Territory or Canadian Province of Decedent's residence - code | STATEC| [Decedent]|address.state | string | [ValueSetStatesTerritoriesAndProvincesVitalRecords] | 
| 27 | Decedent's Residence--Country | COUNTRYC| [Decedent]|address.country | string | [ValueSetResidenceCountryVitalRecords] | 
| 28 | Decedent's Residence--Inside City Limits | LIMITS| [Decedent]|address.city.extension[ withinCityLimits]  | codeable | [ValueSetYesNoUnknownVitalRecords] | 
| 29 | Marital Status | MARITAL| [Decedent]|maritalStatus | codeable |  [MaritalStatusVS] | 
| 30 | Marital Status--Edit Flag | MARITAL_BYPASS| [Decedent]|maritalStatus.extension[ BypassEditFlag]  | codeable | [EditBypass0124VS] | 
| 143 | Decedent's spouse living at decedent's DOD? | SPOUSELV| [Decedent]|extension[ SpouseAlive ]  | codeable |  [SpouseAliveVS] | 
| 146 | Decedent's Residence - Street number | STNUM_R| [Decedent]|address.extension[stnum] | string | - | 
| 147 | Decedent's Residence - Pre Directional | PREDIR_R| [Decedent]|address.extension[predir] | string | - | 
| 148 | Decedent's Residence - Street name | STNAME_R| [Decedent]|address.extension[stname] | string | - | 
| 149 | Decedent's Residence - Street designator | STDESIG_R| [Decedent]|address.extension[stdesig] | string | - | 
| 150 | Decedent's Residence - Post Directional | POSTDIR_R| [Decedent]|address.extension[postdir] | string | - | 
| 151 | Decedent's Residence - Unit or apt number | UNITNUM_R| [Decedent]|address.extension[unitnum] | string | - | 
| 152 | Decedent's Residence - City or Town name | CITYTEXT_R| [Decedent]|address.city | string | - | 
| 153 | Decedent's Residence - ZIP code | ZIP9_R| [Decedent]|address.postalCode | string | - | 
| 154 | Decedent's Residence - County | COUNTYTEXT_R| [Decedent]|address.district | string | - | 
| 155 | Decedent's Residence - State name | STATETEXT_R | [Decedent]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 156 | Decedent's Residence - COUNTRY name | COUNTRYTEXT_R| [Decedent]|address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 157 | Long string address for decedent's place of residence same as above but allows states to choose the way they capture information. | ADDRESS_R| [Decedent]|address.line[0] | string | - | 
| 166 | Middle Name of Decedent  | DMIDDLE| [Decedent]|name.given , name.use = official | string | - | 
| 194 | Decedent's Maiden Name | DMAIDEN| [Decedent]|name.text , name.use=maiden | string | - | 
| 195 | Decedent's Birth Place City - Code | DBPLACECITYCODE| [Decedent]|extension[patient-birthPlace].value[x].city.extension[ cityCode] | integer | see [CityCodes] | 
| 196 | Decedent's Birth Place City - Literal | DBPLACECITY| [Decedent]|extension[patient-birthPlace].value[x].city | string | - | 
| 201 | Informant's Relationship | INFORMRELATE| [Decedent]|contact.type.text  | string (30 characters) | - | 
| 238 | State, U.S. Territory or Canadian Province of Birth - literal | STATEBTH| [Decedent]|extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present    (expanded from 2 letter code) | string | See [StateLiterals] | 
| 246 | Marital Descriptor | MARITAL_DESCRIP| [Decedent]|maritalStatus.text  | string | - | 
| 16 | Decedent's Age--Type | AGETYPE| [DecedentAge]|valueQuantity.code | codeable | [UnitsOfAgeVS] | 
| 17 | Decedent's Age--Units | AGE | [DecedentAge]|valueQuantity.value | decimal | - | 
| 18 | Decedent's Age--Edit Flag | AGE_BYPASS| [DecedentAge]|value.extension[ BypassEditFlag ].value | codeable | See [Note on Decedent Name] | 
| 33 | Method of Disposition | DISP| [DecedentDispositionMethod]|value | codeable | [MethodOfDispositionVS] | 
| 37 | Decedent's Education | DEDUC| [DecedentEducationLevel]|value | codeable | [ValueSetEducationLevelVitalRecords] | 
| 38 | Decedent's Education--Edit Flag | DEDUC_BYPASS| [DecedentEducationLevel]|value.extension[ByPassEdit].value | codeable | [EditBypass01234VS] | 
| 12 | Father's Surname | FLNAME| [DecedentFather]|name.family | string | - | 
| 167 | Father's First Name | DDADF| [DecedentFather]|name.given , name.use = official | string | - | 
| 168 | Father's Middle Name | DDADMID| [DecedentFather]|name.given , name.use = official | string | - | 
| 199 | Father's Suffix | FATHERSUFFIX| [DecedentFather]|name.suffix , name.use = official | string | - | 
| 128 | Decedent ever served in Armed Forces? | ARMEDF| [DecedentMilitaryService]|value | codeable | [ValueSetYesNoUnknownVitalRecords] | 
| 169 | Mother's First Name | DMOMF| [DecedentMother]|name.given , name.use = official | string | - | 
| 170 | Mother's Middle Name | DMOMMID| [DecedentMother]|name.given , name.use = official | string | - | 
| 171 | Mother's Maiden Surname | DMOMMDN| [DecedentMother]|name.family , name.type=maiden | string  | - | 
| 200 | Mother's Suffix | MOTHERSSUFFIX| [DecedentMother]|name.suffix , name.use = official | string | - | 
| 144 | Spouse's First Name | SPOUSEF| [DecedentSpouse]|name.given | string | - | 
| 145 | Husband's Surname/Wife's Maiden Last Name | SPOUSEL | [DecedentSpouse]|name.family, name.use = 'maiden | string | - | 
| 197 | Spouse's Middle Name | SPOUSEMIDNAME| [DecedentSpouse]|name.given , name.use = official | string | - | 
| 198 | Spouse's Suffix | SPOUSESUFFIX| [DecedentSpouse]|name.suffix , name.use = official | string | - | 
| 112 | Pregnancy | PREG| [DecedentPregnancyStatus]|value | codeable | [PregnancyStatusVS] | 
| 113 | If Female--Edit Flag: From EDR only | PREG_BYPASS| [DecedentPregnancyStatus]|value.extension[ BypassEditFlag ].value | codeable | [EditBypass012VS] | 
| 84 | Occupation -- Literal  | OCCUP| [DecedentUsualWork]|value.text | string(40) | - | 
| 86 | Industry -- Literal  | INDUST| [DecedentUsualWork]|component [ odh-UsualIndustry	].value.text | string(40) | - | 
| 94 | Occupation -- 4 digit Code  | OCCUPC4| [DecedentUsualWork]|valueCodeableConcept.coding[occupationCDCCensus2018]  | codeable | [PHVS_Occupation_CDC_Census2018VS] | 
| 95 | Industry -- 4 digit Code | INDUSTC4| [DecedentUsualWork]|component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2018]  | codeable | [PHVS_Industry_CDC_Census2018VS] | 
| 202 | State, U.S. Territory or Canadian Province of Disposition - code | DISPSTATECD| [DispositionLocation]|address.state | string | [ValueSetStatesTerritoriesAndProvincesVitalRecords] | 
| 203 | Disposition State or Territory - Literal | DISPSTATE| [DispositionLocation]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 204 | Disposition City - Code | DISPCITYCODE| [DispositionLocation]|address.city.extension[ cityCode].value | integer | see [CityCodes] | 
| 205 | Disposition City - Literal | DISPCITY| [DispositionLocation]|address.city | string | - | 
| 248 | Blank for One-Byte Field 1 | PLACE1_1| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_1].value | string(1) |  | 
| 249 | Blank for One-Byte Field 2 | PLACE1_2| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_2].value | string(1) |  | 
| 250 | Blank for One-Byte Field 3 | PLACE1_3| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_3].value | string(1) |  | 
| 251 | Blank for One-Byte Field 4 | PLACE1_4| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_4].value | string(1) |  | 
| 252 | Blank for One-Byte Field 5 | PLACE1_5| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_5].value | string(1) |  | 
| 253 | Blank for One-Byte Field 6 | PLACE1_6| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue1_6].value | string(1) |  | 
| 254 | Blank for Eight-Byte Field 1 | PLACE8_1| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue8_1].value | string(8) |  | 
| 255 | Blank for Eight-Byte Field 2 | PLACE8_2| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue8_2].value | string(8) |  | 
| 256 | Blank for Eight-Byte Field 3 | PLACE8_3| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue8_3].value | string(8) |  | 
| 257 | Blank for Twenty-Byte Field | PLACE20| [ObservationEmergingIssuesVitalRecords]|component[EmergingIssue20].value | string(20) |  | 
| 172 | Was case Referred to Medical Examiner/Coroner? | REFERRED| [ExaminerContacted]|value | codeable | [ValueSetYesNoUnknownVitalRecords] | 
| 206 | Funeral Facility Name | FUNFACNAME| [FuneralHome]|name | string | - | 
| 207 | Funeral Facility - Street number | FUNFACSTNUM| [FuneralHome]|address.extension[stnum] | string | - | 
| 208 | Funeral Facility - Pre Directional | FUNFACPREDIR| [FuneralHome]|address.extension[predir] | string | - | 
| 209 | Funeral Facility - Street name | FUNFACSTRNAME| [FuneralHome]|address.extension[stname] | string | - | 
| 210 | Funeral Facility - Street designator | FUNFACSTRDESIG| [FuneralHome]|address.extension[stdesig] | string | - | 
| 211 | Funeral Facility - Post Directional | FUNPOSTDIR| [FuneralHome]|address.extension[postdir] | string | - | 
| 212 | Funeral Facility - Unit or apt number | FUNUNITNUM| [FuneralHome]|address.extension[unitnum] | string | - | 
| 213 | Long string address for Funeral Facility same as above but allows states to choose the way they capture information. | FUNFACADDRESS| [FuneralHome]|address.line | string | address.line  | 
| 214 | Funeral Facility - City or Town name | FUNCITYTEXT| [FuneralHome]|address.city | string | address.city  | 
| 215 | State, U.S. Territory or Canadian Province of Funeral Facility - code | FUNSTATECD| [FuneralHome]|address.state | string | [ValueSetStatesTerritoriesAndProvincesVitalRecords] | 
| 216 | State, U.S. Territory or Canadian Province of Funeral Facility - literal | FUNSTATE| [FuneralHome]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 217 | Funeral Facility - ZIP | FUNZIP| [FuneralHome]|address.postalCode | string | - | 
| 114 | Date of injury--month | DOI_MO| [InjuryIncident]|effective | dateTime | See [PartialDatesAndTimes] | 
| 115 | Date of injury--day | DOI_DY| [InjuryIncident]|effective | dateTime | See [PartialDatesAndTimes] | 
| 116 | Date of injury--year | DOI_YR| [InjuryIncident]|effective | dateTime | See [PartialDatesAndTimes] | 
| 117 | Time of injury | TOI_HR| [InjuryIncident]|effective | dateTime | See [PartialDatesAndTimes] | 
| 118 | Injury at work | WORKINJ| [InjuryIncident]|component[InjuryAtWork].value | codeable | [ValueSetYesNoUnknownNotApplicableVitalRecords] | 
| 126 | Time of Injury Unit | TOI_UNIT| [InjuryIncident]|effective | implicit |  | 
| 173 | Place of Injury- literal | POILITRL| [InjuryIncident]|component[ placeOfInjury ].value.text | string | - | 
| 174 | Describe How Injury Occurred | HOWINJ| [InjuryIncident]|value.text | string | - | 
| 175 | If Transportation Accident, Specify | TRANSPRT| [InjuryIncident]|component[ transportationRole ].value.  (if value.code = OTH) the role should be specified in value.text) | codeable | [TransportationIncidentRoleVS] | 
| 176 | County of Injury - literal | COUNTYTEXT_I| [InjuryLocation]|address.district | string | - | 
| 177 | County of Injury code | COUNTYCODE_I| [InjuryLocation]|address.district.extension[ districtCode].value | integer | see [CountyCodes] | 
| 178 | Town/city of Injury - literal | CITYTEXT_I| [InjuryLocation]|address.city | string | - | 
| 179 | Town/city of Injury code | CITYCODE_I| [InjuryLocation]|address.city.extension[ cityCode].value | integer | see [CityCodes] | 
| 180 | State, U.S. Territory or Canadian Province of Injury - code | STATECODE_I| [InjuryLocation]|address.state | string | [ValueSetStatesTerritoriesAndProvincesVitalRecords] | 
| 181 | Place of injury. Longitude | LONG_I| [InjuryLocation]|position.longitude | float | - | 
| 182 | Place of injury. Latitude | LAT_I| [InjuryLocation]|position.latitude | float | - | 
| 237 | State, U.S. Territory or Canadian Province of Injury - literal | STINJURY| [InjuryLocation]|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 100 | Manner of Death | MANNER| [MannerOfDeath]|value | codeable | [MannerOfDeathVS] | 
| 123 | Surgery Date--month | SUR_MO| [SurgeryDate]|value | dateTime | See [PartialDatesAndTimes] | 
| 124 | Surgery Date--day | SUR_DY| [SurgeryDate]|value | dateTime | See [PartialDatesAndTimes] | 
| 125 | Surgery Date--year | SUR_YR| [SurgeryDate]|value | dateTime | See [PartialDatesAndTimes] | 
| 111 | Did Tobacco Use Contribute to Death? | TOBAC| [TobaccoUseContributedToDeath]|value | codeable | [ContributoryTobaccoUseVS] | 
{: .grid }
#### Coded Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set/Comments** |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 120 | Activity at time of death (computer generated) | INACT| [ActivityAtTimeOfDeath]|value | codeable | [ActivityAtTimeOfDeathVS] | 
| 105 | ACME Underlying Cause | ACME_UC| [AutomatedUnderlyingCauseOfDeath]|value | codeable | [ICD10CausesOfDeathVS] | 
| 104 | Manual Underlying Cause  | MAN_UC| [ManualUnderlyingCauseOfDeath]|value | codeable | [ICD10CausesOfDeathVS] | 
| 108 | Record-axis codes | RAC| [RecordAxisCauseOfDeath]|Each entry is a 3-tuple (value, component[position], component[WouldBeUnderlyingCauseOfDeathWithoutPregnancy]) | codeable | [ICD10CausesOfDeathVS] | 
| 106 | Entity-axis codes | EAC| [EntityAxisCauseOfDeath]|Each entry is a 4-tuble (value, component[position], component[lineNumber], component[e-code-indicator]   | codeable | [ICD10CausesOfDeathVS] | 
| 103 | Place of Injury (computer generated) | INJPL| [PlaceOfInjury]|value | codeable | [PlaceOfInjuryVS] | 
| 91 | Receipt date -- Year | R_YR| [CodingStatusValues]|parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 92 | Receipt date -- Month | R_MO| [CodingStatusValues]|parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 93 | Receipt date -- Day | R_DY| [CodingStatusValues]|parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 101 | Intentional Reject  | INT_REJ| [CodingStatusValues]|parameter[intentionalReject].value | codeable | [IntentionalRejectVS] | 
| 102 | Acme System Reject Codes | SYS_REJ| [CodingStatusValues]|parameter[acmeSystemReject].value  | codeable | [ACMESystemRejectVS] | 
| 107 | Transax conversion flag: Computer Generated | TRX_FLG| [CodingStatusValues]|parameter[transaxConversion].value  | codeable | [TransaxConversionVS] | 
| NA | coder status  | CS (TRX Field, no IJE Mapping)| [CodingStatusValues]|parameter[coderStatus].value | integer | - | 
| NA | shipment number  | SHIP (TRX Field, no IJE Mapping)| [CodingStatusValues]|parameter[shipmentNumber].value | string | - | 
| 3 | Certificate Number | FILENO| [CauseOfDeathCodedContentBundle]|identifier.extension[ certificateNumber].value | string(6) | - | 
| 5 | Auxiliary State file number | AUXNO| [CauseOfDeathCodedContentBundle]|identifier.extension[ auxiliaryStateIdentifier1 ].value | string(12) | - | 
| 121 | Auxiliary State file number | AUXNO2| [CauseOfDeathCodedContentBundle]|identifier.extension[ auxiliaryStateIdentifier2 ].value | string(12) | - | 
| NA | Death Record Identifier | *NO IJE MAPPING*| [CauseOfDeathCodedContentBundle]|identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
| 3 | Certificate Number | FILENO| [DemographicCodedContentBundle]|identifier.extension[ certificateNumber].value | string(6) | - | 
| 5 | Auxiliary State file number | AUXNO| [DemographicCodedContentBundle]|identifier.extension[ auxiliaryStateIdentifier1 ].value | string(12) | - | 
| 121 | Auxiliary State file number | AUXNO2| [DemographicCodedContentBundle]|identifier.extension[ auxiliaryStateIdentifier2 ].value | string(12) | - | 
| NA | Death Record Identifier | *NO IJE MAPPING*| [DemographicCodedContentBundle]|identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
{: .grid }
#### Not Implemented Content

| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set/Comments** |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| 4 | Void flag | VOID| [not implemented]| |  | - | 
| 11 | Alias Record Flag | ALIAS| [not implemented]| |  | - | 
| 14 | Sex--Edit Flag | SEX_BYPASS| [not implemented]| |  | - | 
| 85 | Occupation -- Code  | OCCUPC| [not implemented]| |  | - | 
| 87 | Industry -- Code  | INDUSTC| [not implemented]| |  | - | 
| 99 | FILLER 2 for expansion | | [not implemented]| |  | - | 
| 127 | For possible future change in transax | BLANK1| [not implemented]| |  | - | 
| 158 | Old NCHS residence state code | RESSTATE| [not implemented]| |  | - | 
| 159 | Old NCHS residence city/county combo code | RESCON| [not implemented]| |  | - | 
| 161 | Bridged Race | NCHSBRIDGE| [not implemented]| |  | - | 
| 162 | Hispanic - old NCHS single ethnicity codes | HISPOLDC| [not implemented]| |  | - | 
| 163 | Race - old NCHS single race codes | RACEOLDC| [not implemented]| |  | - | 
| 164 | Hispanic Origin - Specify  | HISPSTSP| [not implemented]| |  | - | 
| 165 | Race - Specify | RACESTSP| [not implemented]| |  | - | 
| 183 | Old NCHS education code if collected - receiving state will recode as they prefer | OLDEDUC| [not implemented]| |  | - | 
| 236 | Date Filed | FILEDATE| [not implemented]| |  | - | 
| 241 | SSA State Source of Death | SSADTHCODE| [not implemented]| |  | - | 
| 242 | SSA Foreign Country Indicator | SSAFOREIGN| [not implemented]| |  | - | 
| 243 | SSA EDR Verify Code | SSAVERIFY| [not implemented]| |  | - | 
| 244 | SSA Date of SSN Verification | SSADATEVER| [not implemented]| |  | - | 
| 245 | SSA Date of State Transmission | SSADATETRANS| [not implemented]| |  | - | 
| 258 | Blank for future expansion | BLANK2| [not implemented]| |  | - | 
| 259 | Blank for Jurisdictional Use Only | BLANK3| [not implemented]| |  | - | 
{: .grid }
{% include markdown-link-references.md %}
