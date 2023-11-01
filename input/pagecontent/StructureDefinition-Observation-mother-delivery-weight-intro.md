### Form Mapping
This profile is mapped to:
 * Item **33. Mother’s Weight At Delivery** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **25. Mother’s weight at delivery** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 139 | Mother's Weight at Delivery (in whole pounds) | DWGT | value |quantity | |
| Natality | 140 | Mother's Weight at Delivery--Edit Flag | DWGT_BYPASS | value.extension[bypassEditFlag].value |codeable |[PregnancyReportEditFlagsVS], <br />See [Handling of edit flags] |
{: .grid }
{% include markdown-link-references.md %}