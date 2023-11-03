### Form Mapping
This profile is mapped to:
 * Item **43. Obstetric Procedures** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **16. Obstetric procedures** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)

### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Natality | 176 | Obstetric Procedures--Successful External Cephalic Version | ECVS | code=240278000 (External cephalic version (procedure)), <br />outcome=385669000 (Successful (qualifier value)) |codeable |[ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. <br />Discussion needed: Is ECVF always the complement of ECVS?   <br />If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? |
| Natality | 177 | Obstetric Procedures--Failed External Cephalic Version | ECVF | code=240278000 (External cephalic version (procedure)), <br />outcome=385671000 (Unsuccessful (qualifier value)) |codeable |[ProcedureOutcomeCodesSNOMEDCT](http://hl7.org/fhir/ValueSet/procedure-outcome) valueset includes Successful, Unsuccessful, and Partially successful values, whereas IJE values are Y, N, U. <br />Discussion needed: Is ECVF always the complement of ECVS?   <br />If there is a successful procedure, does that imply that there was NOT an unsuccessful procedure? |
{: .grid }
{% include markdown-link-references.md %}
