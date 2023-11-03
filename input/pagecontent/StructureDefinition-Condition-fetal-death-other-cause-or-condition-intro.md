The type of cause or condition (code.coding) should be selected from the value set Fetal Death Cause or Condition and any further specification should be entered as free text (code.text) to fully record the provider's view of the cause.

### Form Mapping
This profile is mapped to:
 * Item **18b. Other Significant Causes or Conditions** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **27. Other Significant Causes or Conditions** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Fetal Death | 194 | Other significant causes or conditions - Rupture of membranes prior to onset of labor | COD18b1 | code=44223004 (Premature rupture of membranes (disorder)) |na | |
| Fetal Death | 195 | Other significant causes or conditions - Abruptio placenta | COD18b2 | code=415105001 (Placental abruption (disorder)) |na | |
| Fetal Death | 196 | Other significant causes or conditions  - Placental insufficiency | COD18b3 | code=237292005 (Placental insufficiency (disorder)) |na | |
| Fetal Death | 197 | Other significant causes or conditions - Prolapsed cord | COD18b4 | code=270500004 (Prolapsed cord (disorder)) |na | |
| Fetal Death | 198 | Other significant causes or conditions - Chorioamnionitis | COD18b5 | code=11612004 (Chorioamnionitis (disorder)) |na | |
| Fetal Death | 199 | Other significant causes or conditions - Other complications of placenta, cord, or membranes | COD18b6 | code=FetalDeathCauseOrConditionCS#membranes |na | |
| Fetal Death | 200 | Other significant causes or conditions - Unknown | COD18b7 | code=UNK |na | |
| Fetal Death | 201 | Other significant causes or conditions - Maternal conditions/diseases literal | COD18b8 | code=FetalDeathCauseOrConditionCS#maternalconditions, <br />code.text |string |code.text should contain description |
| Fetal Death | 202 | Other significant causes or conditions - Other complications of placenta, cord, or membranes literal | COD18b9 | code=FetalDeathCauseOrConditionCS#membranes, <br />code.text |string |code.text should contain description |
| Fetal Death | 203 | Other significant causes or conditions - Other obstetrical or pregnancy complications literal | COD18b10 | code=FetalDeathCauseOrConditionCS#obstetricalcomplications, <br />code.text |string |code.text should contain description |
| Fetal Death | 204 | Other significant causes or conditions - Fetal anomaly literal | COD18b11 | code=702709008 (Fetal Anomaly (Specify)), <br />code.text |string |code.text should contain description |
| Fetal Death | 205 | Other significant causes or conditions - Fetal injury literal | COD18b12 | code=277489001 (Fetal trauma (disorder)), <br />code.text |string |specific description of fetal trauma should be provided in the code.text field |
| Fetal Death | 206 | Other significant causes or conditions - Fetal infection literal | COD18b13 | code=128270001 (Infectious disorder of the fetus (disorder)), <br />code.text |string |specific description of fetal infection should be provided in the code.text field |
| Fetal Death | 207 | Other significant causes or conditions - Other fetal conditions/disorders literal | COD18b14 | code=FetalDeathCauseOrConditionCS#fetalconditions, <br />code.text |string |code.text should contain description |
{: .grid }
{% include markdown-link-references.md %}
