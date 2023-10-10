Note: The Certifier profile is based on the [US Core Practitioner](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-practitioner.html) which requires an identifier be included.
The death record submission process does not require an identifier.  As a result, death record submissions that are complete will be flagged as invalid by the FHIR validator, unless they include
an identifier.
### IJE Mapping

| **Use Case** |  **IJE Field#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 220 | Certifier's First Name | CERTFIRST | name.given , name.use = official |string |- |
| Mortality | 221 | Certifier's Middle Name | CERTMIDDLE | name.given , name.use = official |string |- |
| Mortality | 222 | Certifier's Last Name | CERTLAST | name.family , name.use = official |string |- |
| Mortality | 223 | Certifier's Suffix Name | CERTSUFFIX | name.suffix , name.use = official |string |- |
| Mortality | 224 | Certifier - Street number | CERTSTNUM | address.extension[stnum] |string |- |
| Mortality | 225 | Certifier - Pre Directional | CERTPREDIR | address.extension[predir] |string |- |
| Mortality | 226 | Certifier - Street name | CERTSTRNAME | address.extension[stname] |string |- |
| Mortality | 227 | Certifier - Street designator | CERTSTRDESIG | address.extension[stdesig] |string |- |
| Mortality | 228 | Certifier - Post Directional | CERTPOSTDIR | address.extension[postdir] |string |- |
| Mortality | 229 | Certifier - Unit or apt number | CERTUNITNUM | address.extension[unitnum] |string |- |
| Mortality | 230 | Long string address for Certifier same as above but allows states to choose the way they capture information. | CERTADDRESS | address.line  |string |- |
| Mortality | 231 | Certifier - City or Town name | CERTCITYTEXT | address.city  |string |- |
| Mortality | 232 | State, U.S. Territory or Canadian Province of Certifier - code | CERTSTATECD | address.state |string |[StatesTerritoriesAndProvincesVS] |
| Mortality | 233 | State, U.S. Territory or Canadian Province of Certifier - literal | CERTSTATE | address.state (expanded from 2 letter code) |string |See [StateLiterals] |
| Mortality | 234 | Certifier - Zip | CERTZIP | address.postalCode |string |- |
{: .grid }
