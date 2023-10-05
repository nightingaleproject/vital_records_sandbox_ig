### IJE Mapping

| **Use Case** |  **IJE Field#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 2 | State, U.S. Territory or Canadian Province of Death - code | DSTATE | address.state or address.state.extension[nationalReportingJurisdictionId ] |codeable |[StatesTerritoriesAndProvincesVS] in state field or [JurisdictionVS] in extension |
| Mortality | 32 | County of Death Occurrence | COD | address.district.extension[ districtCode ] |integer |see [CountyCodes] |
| Mortality | 129 | Death Institution name | DINSTI | name |string  |- |
| Mortality | 130 | Long String address for place of death | ADDRESS_D | address.line |string  |- |
| Mortality | 131 | Place of death. Street number | STNUM_D | address.extension[stnum] |string |- |
| Mortality | 132 | Place of death. Pre Directional | PREDIR_D | address.extension[predir] |string |- |
| Mortality | 133 | Place of death. Street name | STNAME_D | address.extension[stname] |string |- |
| Mortality | 134 | Place of death. Street designator | STDESIG_D | address.extension[stdesig] |string |- |
| Mortality | 135 | Place of death. Post Directional | POSTDIR_D | address.extension[postdir] |string |- |
| Mortality | 136 | Place of death. City or Town name | CITYTEXT_D | address.city |string |- |
| Mortality | 137 | Place of death. State name literal | STATETEXT_D | address.state (expanded from 2 letter code) |string |- |
| Mortality | 138 | Place of death. Zip code | ZIP9_D | address.postalCode |string |- |
| Mortality | 139 | Place of death. County of Death | COUNTYTEXT_D | address.district |string |- |
| Mortality | 140 | Place of death. City FIPS code | CITYCODE_D | address.city.extension[ cityCode] |integer |see [CityCodes] |
| Mortality | 141 | Place of death. Longitude | LONG_D | position.longitude |float |- |
| Mortality | 142 | Place of Death. Latitude | LAT_D | position.latitude |float |- |
| Mortality | 239 | Country of Death - Code | DTHCOUNTRYCD | address.country  |string  |[ResidenceCountryVS].  Note: For US Death certificates should be US |
| Mortality | 240 | Country of Death - Literal | DTHCOUNTRY | address.country  (expanded from 2 letter code) |string  |See [CountryLiterals].   Not used. For US Death certificates should be 'United States'. |
| Mortality Roster | 6 | State, U.S. Territory or Canadian Province of Death - literal | STATETEXT_D | address.state (expanded from 2 letter code) |string |- |
| Mortality Roster | 7 | State, U.S. Territory or Canadian Province of Death - code | DSTATE | address.state or address.state.extension[nationalReportingJurisdictionId ] |codeable |[StatesTerritoriesAndProvincesVS] or [JurisdictionVS] |
| Mortality Roster | 30 | Death Country - Code | DCOUNTRYC | address.country  |string  |[ResidenceCountryVS].  Note: For US Death certificates should be US.    |
{: .grid }
