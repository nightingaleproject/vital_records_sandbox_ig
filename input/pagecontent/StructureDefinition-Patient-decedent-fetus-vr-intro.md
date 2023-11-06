### Form Mapping
This profile is mapped to:
 * Item **1. Name of Fetus** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **2. Time of Delivery** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **3. Sex** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **4. Date of Delivery** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **5a. City, Town, or Location of Delivery** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **5b. Zip Code of Delivery** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **6. County of Delivery** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **34. If Not Single Birth-Born First, Second, Third, etc.** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **3. City, Town or Location of delivery** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **4. County of delivery** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **12. Date of delivery** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **13. Time of delivery** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **21. Sex** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **22. Plurality** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **23. If not single delivery, order delivered in the pregnancy** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)
 * Item **1. Would you like to name the child?** in the [2019 US Standard Patient’s Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Fetal Death | 1 | Date of Delivery (Fetus)--Year | FDOD_YR | birthDate | | |
| Fetal Death | 2 | State, U.S. Territory or Canadian Province of Place of Delivery - code | DSTATE | extension[patient-birthPlace].value[x].state |codeable |[ValueSetStatesTerritoriesAndProvincesVitalRecords]  |
| Fetal Death | 6 | Time of Delivery | TD | birthDate.extension[patient-birthTime] | |See [PartialDatesAndTimes] |
| Fetal Death | 7 | Sex | FSEX | extension[us-core-birthsex].value |codeable |[USCoreBirthSexVS] |
| Fetal Death | 8 | Date of Delivery (Fetus)--Month | FDOD_MO | birthDate | | |
| Fetal Death | 9 | Date of Delivery (Fetus)--Day | FDOD_DY | birthDate | | |
| Fetal Death | 152 | Set Order | SORD | multipleBirth[x] |integer | |
| Fetal Death | 155 | Plurality--Edit Flag | PLUR_BYPASS | multipleBirth.extension[bypassEditFlag].value |codeable |[PluralityEditFlagsVS], <br />See [Handling of edit flags] |
| Fetal Death | 172 | Father's Reported Age | FAGER | extension[parentReportedAgeAtDelivery].extension[reportedAge].value, <br />extension[parentReportedAgeAtDelivery].extension[motherOrFather].value=<br />Reference[ RelatedPersonFatherNaturalVitalRecords ] |quantity | |
| Fetal Death | 219 | Fetus First Name | FETFNAME | name.given, <br />name.use = official |string |See [Note on Decedent Name] |
| Fetal Death | 220 | Fetus Middle Name | FETMNAME | name.given, <br />name.use = official |string |See [Note on Decedent Name] |
| Fetal Death | 221 | Fetus Last Name | FETLNAME | name.family, name.use = official. (absence is equivalent to ‘UNKNOWN’.) |string  |See [Note on Decedent Name] |
| Fetal Death | 222 | Fetus Surname Suffix | SUFFIX | name.suffix, <br />name.use = official |string | |
{: .grid }
{% include markdown-link-references.md %}
