### Form Mapping
This profile is mapped to:
 * Item **31. Mother’s Height** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **13. What is your height?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **25. Mother’s Height** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **15. What is your height?** in the [2019 US Standard Patient’s Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 134 | Mother's Height--Feet | HFT | value |quantity | |
| Natality | 135 | Mother's Height--Inches | HIN | value |quantity | |
| Natality | 136 | Mother's Height--Edit Flag | HGT_BYPASS | value.extension[bypassEditFlag].value |codeable |[PregnancyReportEditFlagsVS], <br />See [Handling of edit flags]  |
| Fetal Death | 88 | Mother's Height--Feet | HFT | value |quantity | |
| Fetal Death | 89 | Mother's Height--Inches | HIN | value |quantity | |
| Fetal Death | 90 | Mother's Height--Edit Flag | HGT_BYPASS | value.extension[bypassEditFlag].value |codeable |[PregnancyReportEditFlagsVS], <br />See [Handling of edit flags]  |
{: .grid }
{% include markdown-link-references.md %}
