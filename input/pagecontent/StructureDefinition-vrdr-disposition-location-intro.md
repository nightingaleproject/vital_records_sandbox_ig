Implementors are free to use the name field for the name of the disposition location.
### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 202 | State, U.S. Territory or Canadian Province of Disposition - code | DISPSTATECD | address.state |string |[StatesTerritoriesAndProvincesVS] |
| Mortality | 203 | Disposition State or Territory - Literal | DISPSTATE | address.state (expanded from 2 letter code) |string |See [StateLiterals] |
| Mortality | 204 | Disposition City - Code | DISPCITYCODE | address.city.extension[ cityCode].value |integer |see [CityCodes] |
| Mortality | 205 | Disposition City - Literal | DISPCITY | address.city |string |- |
{: .grid }
{% include markdown-link-references.md %}
