The Decedent profile contains basic information about the decedent, including data that are essential to the death record.

  Note: The Decedent profile is based on the [US Core Patient Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-patient.html) which requires gender.
  The death record submission use case uses NCHS's definition of sex at time of death which is different than gender.  Complete death record submissions may fail FHIR validation
  due to lack of a value for gender.
### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 7 | Decedent's Legal Name--Given  | GNAME | name.given , name.use = official |string |- |
| Mortality | 8 | Decedent's Legal Name--Middle | MNAME | name.given , name.use = official (first letter) |string |- |
| Mortality | 9 | Decedent's Legal Name--Last | LNAME | name.family , name.use = official. (absence is equivalent to 'UNKNOWN'.) |string |- |
| Mortality | 10 | Decedent's Legal Name--Suffix | SUFF | name.suffix , name.use = official |string |- |
| Mortality | 13 | Sex | SEX | extension[NVSS-SexAtDeath]  |codeable |[AdministrativeGenderVS] |
| Mortality | NA | Gender | *NO IJE MAPPING* | gender |codeable |[AdministrativeGenderVS](http://hl7.org/fhir/R4/valueset-administrative-gender.html) - See [Note on Decedent Gender] |
| Mortality | 15 | Social Security Number | SSN | identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SB" |string |- |
| Mortality | 19 | Date of Birth--Year | DOB_YR | birthDate |dateTime |See [PartialDatesAndTimes] |
| Mortality | 20 | Date of Birth--Month | DOB_MO | birthDate |dateTime |See [PartialDatesAndTimes] |
| Mortality | 21 | Date of Birth--Day | DOB_DY | birthDate |dateTime |See [PartialDatesAndTimes] |
| Mortality | 22 | Birthplace--Country | BPLACE_CNT | extension[patient-birthPlace].value[x].country  |string |[BirthplaceCountryVS] |
| Mortality | 23 | State, U.S. Territory or Canadian Province of Birth - code | BPLACE_ST | extension[patient-birthPlace].value[x].state |string |[StatesTerritoriesAndProvincesVS] |
| Mortality | 24 | Decedent's Residence--City | CITYC | address.city.extension[ cityCode ] |integer |see [CityCodes] |
| Mortality | 25 | Decedent's Residence--County | COUNTYC | address.district.extension[ districtCode ] |integer |see [CountyCodes] |
| Mortality | 26 | State, U.S. Territory or Canadian Province of Decedent's residence - code | STATEC | address.state |string |[StatesTerritoriesAndProvincesVS] |
| Mortality | 27 | Decedent's Residence--Country | COUNTRYC | address.country |string |[ResidenceCountryVS] |
| Mortality | 28 | Decedent's Residence--Inside City Limits | LIMITS | address.city.extension[ withinCityLimits]  |codeable |[ValueSetYesNoUnknownVitalRecords] |
| Mortality | 29 | Marital Status | MARITAL | maritalStatus |codeable | [MaritalStatusVS] |
| Mortality | 30 | Marital Status--Edit Flag | MARITAL_BYPASS | maritalStatus.extension[ BypassEditFlag]  |codeable |[EditBypass0124VS] |
| Mortality | 143 | Decedent's spouse living at decedent's DOD? | SPOUSELV | extension[ SpouseAlive ]  |codeable | [SpouseAliveVS] |
| Mortality | 146 | Decedent's Residence - Street number | STNUM_R | address.extension[stnum] |string |- |
| Mortality | 147 | Decedent's Residence - Pre Directional | PREDIR_R | address.extension[predir] |string |- |
| Mortality | 148 | Decedent's Residence - Street name | STNAME_R | address.extension[stname] |string |- |
| Mortality | 149 | Decedent's Residence - Street designator | STDESIG_R | address.extension[stdesig] |string |- |
| Mortality | 150 | Decedent's Residence - Post Directional | POSTDIR_R | address.extension[postdir] |string |- |
| Mortality | 151 | Decedent's Residence - Unit or apt number | UNITNUM_R | address.extension[unitnum] |string |- |
| Mortality | 152 | Decedent's Residence - City or Town name | CITYTEXT_R | address.city |string |- |
| Mortality | 153 | Decedent's Residence - ZIP code | ZIP9_R | address.postalCode |string |- |
| Mortality | 154 | Decedent's Residence - County | COUNTYTEXT_R | address.district |string |- |
| Mortality | 155 | Decedent's Residence - State name | STATETEXT_R  | address.state (expanded from 2 letter code) |string |See [StateLiterals] |
| Mortality | 156 | Decedent's Residence - COUNTRY name | COUNTRYTEXT_R | address.country (expanded from 2 letter code) |string |See [CountryLiterals] |
| Mortality | 157 | Long string address for decedent's place of residence same as above but allows states to choose the way they capture information. | ADDRESS_R | address.line[0] |string |- |
| Mortality | 166 | Middle Name of Decedent  | DMIDDLE | name.given , name.use = official |string |- |
| Mortality | 194 | Decedent's Maiden Name | DMAIDEN | name.text , name.use=maiden |string |- |
| Mortality | 195 | Decedent's Birth Place City - Code | DBPLACECITYCODE | extension[patient-birthPlace].value[x].city.extension[ cityCode] |integer |see [CityCodes] |
| Mortality | 196 | Decedent's Birth Place City - Literal | DBPLACECITY | extension[patient-birthPlace].value[x].city |string |- |
| Mortality | 201 | Informant's Relationship | INFORMRELATE | contact.type.text  |string (30 characters) |- |
| Mortality | 238 | State, U.S. Territory or Canadian Province of Birth - literal | STATEBTH | extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present    (expanded from 2 letter code) |string |See [StateLiterals] |
| Mortality | 246 | Marital Descriptor | MARITAL_DESCRIP | maritalStatus.text  |string |- |
| Mortality Roster | 1 | State, U.S. Territory or Canadian Province of Birth - literal | STATEBTH | extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present    (expanded from 2 letter code) |string |See [StateLiterals] |
| Mortality Roster | 2 | State, U.S. Territory or Canadian Province of Birth - code | BPLACE_ST | extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present  |string |[JurisdictionsProvincesVS] |
| Mortality Roster | 3 | Decedent's Legal Name--Given  | GNAME | name.given , name.use = official |string |See [Note on Decedent Name] |
| Mortality Roster | 4 | Decedent's Legal Name--Middle | MIDNAME | name.given , name.use = official (first letter) |string |See [Note on Decedent Name] |
| Mortality Roster | 5 | Decedent's Legal Name--Last | LNAME | name.family , name.use = official |string |See [Note on Decedent Name] |
| Mortality Roster | 11 | Date of Birth--Month | DOB_MO | birthDate |dateTime |See [PartialDatesAndTimes] |
| Mortality Roster | 12 | Date of Birth--Day | DOB_DY | birthDate |dateTime |See [PartialDatesAndTimes] |
| Mortality Roster | 13 | Date of Birth--Year | DOB_YR | birthDate |dateTime |See [PartialDatesAndTimes] |
| Mortality Roster | 14 | Sex | SEX | extension[NVSS-SexAtDeath]  |codeable |[AdministrativeGenderVS] |
| Mortality Roster | NA | Gender | *NO IJE MAPPING* | gender |codeable |[AdministrativeGenderVS](http://hl7.org/fhir/R4/valueset-administrative-gender.html) - See [Note on Decedent Gender] |
| Mortality Roster | 22 | Decedent's Suffix | SUFF | name.suffix , name.use = official |string |- |
| Mortality Roster | 26 | Decedent's Maiden Name | DMAIDEN | name.text , name.use=maiden |string | |
| Mortality Roster | 27 | State, U.S. Territory or Canadian Province of Decedent's Residence - literal | STATETEXT_R  | address.state (expanded from 2 letter code) |string |See [StateLiterals] |
| Mortality Roster | 28 | State, U.S. Territory or Canadian Province of Decedent's Residence - code | STATEC | address.state |string |[StatesTerritoriesAndProvincesVS] |
| Mortality Roster | 29 | Birthplace Country - Code | BPLACE_CT | extension[patient-birthPlace].value[x].country  |string |[BirthplaceCountryVS]. |
| Mortality Roster | 31 | Decedent's Residence Country - Code | COUNTRYC | address.country |string |[ResidenceCountryVS] |
| Mortality Roster | 32 | Decedent's SSN (may be used by some jurisdictions when allowed by law, to match with the SSN contained with the birth record) | SSN | identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SB" |string |- |
{: .grid }
{% include markdown-link-references.md %}
