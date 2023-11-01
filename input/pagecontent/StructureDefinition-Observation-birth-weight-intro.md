### Form Mapping
This profile is mapped to:
 * Item **49. Birthweight** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **29. Birthweight** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **29. Birthweight** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)
 * Item **18c. Weight of Fetus** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **19. Weight of fetus** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 201 | Birthweight in grams | BWG | value |quantity | |
| Natality | 202 | Birthweight--Edit Flag | BW_BYPASS | value.extension[bypassEditFlag].value |codeable |[BirthWeightEditFlagsVS], <br />See [Handling of edit flags] |
| Fetal Death | 143 | Weight of Fetus | FWG | value |quantity | |
| Fetal Death | 144 | Weight of Fetus--Edit Flag | FW_BYPASS | value.extension[bypassEditFlag].value |codeable |[BirthWeightEditFlagsVS], <br />See [Handling of edit flags] |
{: .grid }
{% include markdown-link-references.md %}