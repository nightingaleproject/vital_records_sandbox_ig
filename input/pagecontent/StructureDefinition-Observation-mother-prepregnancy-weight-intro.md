### Form Mapping
This profile is mapped to:
 * Item **32. Mother’s Prepregnancy Weight** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **14. What was your prepregnancy weight, that is, your weight immediately before you became pregnant with this child?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **26. Mother’s Prepregnancy Weight** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **16. What was your prepregnancy weight?** in the [2019 US Standard Patient’s Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 137 | Mother's Prepregnancy Weight (in whole pounds) | PWGT | value |quantity | |
| Natality | 138 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS | value.extension[bypassEditFlag].value |codeable |[PregnancyReportEditFlagsVS], <br />See [Handling of edit flags] |
| Fetal Death | 91 | Mother's Prepregnancy Weight | PWGT | value |quantity | |
| Fetal Death | 92 | Mother's Prepregnancy Weight--Edit Flag | PWGT_BYPASS | value.extension[bypassEditFlag].value |codeable |[PregnancyReportEditFlagsVS], <br />See [Handling of edit flags] |
{: .grid }
{% include markdown-link-references.md %}
