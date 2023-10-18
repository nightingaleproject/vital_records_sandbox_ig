The type of cause or condition (code.coding) should be selected from the value set Fetal Death Cause or Condition and any further specification should be entered as free text (code.text) to fully record the provider's view of the cause. One or more optional contained Other Significant Cause/Condition of Fetal Death profiles represent another significant cause or condition for the death of the fetus.

### Form Mapping
This profile is mapped to:
 * Item **18a. Initiating Cause/Condition** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **26. Initiating Cause/Condition** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Fetal Death | 180 | Initiating cause/condition - Rupture of membranes prior to onset of labor | COD18a1 | code=44223004 (Premature rupture of membranes (disorder)) |na | |
| Fetal Death | 181 | Initiating cause/condition - Abruptio placenta | COD18a2 | code=415105001 (Placental abruption (disorder)) |na | |
| Fetal Death | 182 | Initiating cause/condition - Placental insufficiency | COD18a3 | code=237292005 (Placental insufficiency (disorder)) |na | |
| Fetal Death | 183 | Initiating cause/condition - Prolapsed cord | COD18a4 | code=270500004 (Prolapsed cord (disorder)) |na | |
| Fetal Death | 184 | Initiating cause/condition - Chorioamnionitis | COD18a5 | code=11612004 (Chorioamnionitis (disorder)) |na | |
| Fetal Death | 185 | Initiating cause/condition - Other complications of placenta, cord, or membranes | COD18a6 | code=FetalDeathCauseOrConditionCS#membranes |na | |
| Fetal Death | 186 | Initiating cause/condition - Unknown | COD18a7 | code=UNK |na | |
| Fetal Death | 187 | Initiating cause/condition - Maternal conditions/diseases literal | COD18a8 | code=FetalDeathCauseOrConditionCS#maternalconditions, code.text |string |code.text should contain description |
| Fetal Death | 188 | Initiating cause/condition - Other complications of placenta, cord, or membranes literal | COD18a9 | code=FetalDeathCauseOrConditionCS#membranes, code.text |string |code.text should contain description |
| Fetal Death | 189 | Initiating cause/condition - Other obstetrical or pregnancy complications literal | COD18a10 | code=FetalDeathCauseOrConditionCS#obstetricalcomplications, code.text |string |code.text should contain description |
| Fetal Death | 190 | Initiating cause/condition - Fetal anomaly literal | COD18a11 | code=702709008 (Fetal Anomaly (Specify)), <br />code.text |string |code.text should contain description |
| Fetal Death | 191 | Initiating cause/condition - Fetal injury literal | COD18a12 | code=277489001 (Fetal trauma (disorder)), <br />code.text |string |specific description of fetal trauma should be provided in the code.text field |
| Fetal Death | 192 | Initiating cause/condition - Fetal infection literal | COD18a13 | code=128270001 (Infectious disorder of the fetus (disorder)), <br />code.text |string |specific description of fetal infection should be provided in the code.text field |
| Fetal Death | 193 | Initiating cause/condition - Other fetal conditions/disorders literal | COD18a14 | code=FetalDeathCauseOrConditionCS#fetalconditions, <br />code.text |string |code.text should contain description |
{: .grid }
