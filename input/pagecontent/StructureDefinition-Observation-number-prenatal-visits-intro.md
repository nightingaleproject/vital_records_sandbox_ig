### Form Mapping
This profile is mapped to:
 * Item **30. Total Number Of Prenatal Visits For This Pregnancy** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **7. Total number of prenatal care visits for this pregnancy** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **24. Total Number of Prenatal Visits For This Pregnancy** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 132 | Total Number of Prenatal Care Visits | NPREV | value |integer | |
| Natality | 133 | Total Number of Prenatal Care Visits--Edit Flag | NPREV_BYPASS | value.extension[bypassEditFlag].value |codeable |[PregnancyReportEditFlagsVS], <br />See [Handling of edit flags]  |
{: .grid }
