### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 176 | County of Injury - literal | COUNTYTEXT_I | address.district |string |- |
| Mortality | 177 | County of Injury code | COUNTYCODE_I | address.district.extension[ districtCode].value |integer |see [CountyCodes] |
| Mortality | 178 | Town/city of Injury - literal | CITYTEXT_I | address.city |string |- |
| Mortality | 179 | Town/city of Injury code | CITYCODE_I | address.city.extension[ cityCode].value |integer |see [CityCodes] |
| Mortality | 180 | State, U.S. Territory or Canadian Province of Injury - code | STATECODE_I | address.state |string |[StatesTerritoriesAndProvincesVS] |
| Mortality | 181 | Place of injury. Longitude | LONG_I | position.longitude |float |- |
| Mortality | 182 | Place of injury. Latitude | LAT_I | position.latitude |float |- |
| Mortality | 237 | State, U.S. Territory or Canadian Province of Injury - literal | STINJURY | address.state (expanded from 2 letter code) |string |See [StateLiterals] |
{: .grid }
