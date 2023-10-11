### Form Mapping
This profile is mapped to:
 * Item **20. Mother’s Education** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **23. Father’s Education** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **8. What is the highest level of schooling that you will have completed at the time of delivery?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **22. What is the highest level of schooling that the father will have completed at the time of delivery?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **19. Mother’s Education** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **8. What is the highest level of schooling that you have completed at the time of delivery?** in the [2019 US Standard Patient’s Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 32 | Mother's Education | MEDUC | value,  <br />focus[ PatientMotherVitalRecords ] |codeable |[EducationLevelVS] |
| Natality | 78 | Father's Education | FEDUC | value, focus[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[EducationLevelVS] |
| Fetal Death | 32 | Mother's Education | MEDUC | value, <br />focus[ PatientMotherVitalRecords ] |codeable |[EducationLevelVS] |
| Fetal Death | 283 | Father's Education | FEDUC | value, <br />focus[ RelatedPersonFatherNaturalVitalRecords ] |codeable |[EducationLevelVS] |
{: .grid }