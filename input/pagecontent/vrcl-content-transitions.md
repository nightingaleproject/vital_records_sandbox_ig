# New Content

| Name    | Type     |  Comment         | Link  |
| :-------: | -------- |  --------------- | :-----: |
| Patient - Vital Records | Profile | Serves as an abstract profile (parent to [PatientChildVitalRecords], [PatientDecedentFetusVitalRecords], [PatientMotherVitalRecords], and [Decedent]) | [PatientVitalRecords] |
{: .grid }

# Remaining Content

| Name    | Type     | Updates     | Comment         | Link  |
| :-------: | -------- | ----------- | --------------- | :-----: |
| Patient - Child - Vital Records | Profile | Now inherits from [PatientVitalRecords] rather than [USCorePatientProfile], removed slices for identifier, added bypassedit flag to multiplebirth, birthTime, dataAbsentReason, partialDate no longer extensions  | - | [PatientChildVitalRecords] |
{: .grid }

# Relocated Content

| Name    | Type     | Previous IG | Current IG   | Updates     | Comment         | Link  |
| :-------: | -------- | --------    | --------     | ----------- | --------------- | :-----: |
| Condition - Eclampsia Hypertension | Profile | [VRCL] | [BFDR] | renamed to [ConditionEclampsiaHypertension] | - | [ConditionEclampsiaHypertension] |
| Value Set - HispanicOrigin Vital Records | Valueset | [VRDR] | [VRCL] | renamed to [ValueSetHispanicOriginVitalRecords] | - | [ValueSetHispanicOriginVitalRecords] |
{: .grid }

{% include markdown-link-references.md %}