The Autopsy Performed Indicator profile captures the following values:
### IJE Mapping

| **Use Case** |  **#**   |  **Description**  | **IJE Name**  |  **Field**  |  **Type**  | **Value Set/Comments**  |
| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |
| Mortality | 109 | Was Autopsy performed | AUTOP | value |codeable |[ValueSetYesNoUnknownVitalRecords] |
| Mortality | 110 | Were Autopsy Findings Available to Complete the Cause of Death? | AUTOPF | component[ autopsyResultsAvailable ].value |codeable |[ValueSetYesNoUnknownNotApplicableVitalRecords] |
{: .grid }
{% include markdown-link-references.md %}
