Birth certificates only require 5 and 10 minute timings. Other use cases may require/accept other timings.

### Form Mapping
This profile is mapped to:
 * Item **51. Apgar Score:** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **32. Apgar score** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **32. Apgar score** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 205 | Apgar Score at 5 Minutes | APGAR5 | value, <br />code = 9274-2 (5 minute Apgar Score) |integer |[ApgarTimingVS] |
| Natality | 206 | Apgar Score at 10 Minutes | APGAR10 | value, <br />code = 9271-8 (10 minute Apgar Score) |integer |[ApgarTimingVS] |
{: .grid }
{% include markdown-link-references.md %}