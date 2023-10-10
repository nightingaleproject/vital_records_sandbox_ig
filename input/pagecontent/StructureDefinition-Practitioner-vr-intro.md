### Form Mapping
This profile is mapped to:
 * Item **11. Certifier’s Name** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **11. Certifier’s Title** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **27. Attendant’s Name** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **27. Attendant’s Title** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **27. Attendant’s NPI** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **19. Certifier’s name** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **19. Certifier’s title** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **24. Attendant’s name** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **24. Attendant’s title** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **24. Attendant’s N.P.I.** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **14. Attendant’s Name** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **14. Attendant’s Title** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **14. Attendant’s NPI** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **15. Name Of Person Completing Report** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **15. Title Of Person Completing Report** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **14. Name of person completing report** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **14. Title of person completing report** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **16. Attendant’s name** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **16. Attendant’s title** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **16. Attendant’s N.P.I.** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 124 | Attendant Title | ATTEND | qualification.code |codeable |[PHVS_BirthAttendantTitles_NCHS] |
| Natality | 304 | Attendant ("Other" specified text) | ATTEND_OTH_TXT | qualification.code.text |string | |
| Natality | 326 | Attendant's Name | ATTEND_NAME | name.text |string | |
| Natality | 327 | Attendant's NPI | ATTEND_NPI | identifier:NPI |string | |
| Natality | 328 | Certifier's Name | CERTIF_NAME | name.text |string | |
| Natality | 329 | Certifier's NPI | CERTIF_NPI | identifier:NPI |identifier | |
| Natality | 330 | Certifier Title | CERTIF | qualification.code |codeable |[PHVS_BirthAttendantTitles_NCHS] |
| Natality | 331 | Certifier ("Other" specified text) | CERTIF_OTH_TXT | qualification.code.text |string | |
| Fetal Death | 78 | Attendant | ATTEND | qualification.code |codeable |[PHVS_BirthAttendantTitles_NCHS] |
| Fetal Death | 340 | Attendant's Name | ATTEND_NAME | name.text |string | |
| Fetal Death | 341 | Attendant's NPI | ATTEND_NPI | identifier:NPI |string | |
| Fetal Death | 342 | Attendant ("Other" specified text) | ATTEND_OTH_TXT | qualification.code.text |string |.text should contain description |
{: .grid }
