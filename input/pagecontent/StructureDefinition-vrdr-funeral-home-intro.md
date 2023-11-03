### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 206 | Funeral Facility Name | FUNFACNAME | name |string |- |
| Mortality | 207 | Funeral Facility - Street number | FUNFACSTNUM | address.extension[stnum] |string |- |
| Mortality | 208 | Funeral Facility - Pre Directional | FUNFACPREDIR | address.extension[predir] |string |- |
| Mortality | 209 | Funeral Facility - Street name | FUNFACSTRNAME | address.extension[stname] |string |- |
| Mortality | 210 | Funeral Facility - Street designator | FUNFACSTRDESIG | address.extension[stdesig] |string |- |
| Mortality | 211 | Funeral Facility - Post Directional | FUNPOSTDIR | address.extension[postdir] |string |- |
| Mortality | 212 | Funeral Facility - Unit or apt number | FUNUNITNUM | address.extension[unitnum] |string |- |
| Mortality | 213 | Long string address for Funeral Facility same as above but allows states to choose the way they capture information. | FUNFACADDRESS | address.line |string |address.line  |
| Mortality | 214 | Funeral Facility - City or Town name | FUNCITYTEXT | address.city |string |address.city  |
| Mortality | 215 | State, U.S. Territory or Canadian Province of Funeral Facility - code | FUNSTATECD | address.state |string |[ValueSetStatesTerritoriesAndProvincesVitalRecords] |
| Mortality | 216 | State, U.S. Territory or Canadian Province of Funeral Facility - literal | FUNSTATE | address.state (expanded from 2 letter code) |string |See [StateLiterals] |
| Mortality | 217 | Funeral Facility - ZIP | FUNZIP | address.postalCode |string |- |
{: .grid }
{% include markdown-link-references.md %}
