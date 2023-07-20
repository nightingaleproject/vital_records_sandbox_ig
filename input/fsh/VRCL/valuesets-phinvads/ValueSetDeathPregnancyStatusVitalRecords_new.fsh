/*New Common valueset that contains value #7*/
ValueSet: ValueSetDeathPregnancyStatusVitalRecordsNew
Id: ValueSet-death-pregnancy-status-vr-new
Title: "ValueSet - Death Pregnancy Status Vital Records"
Description: "A set of codes that reflect whether the decedent was pregnant at or around the time of death. Based on [Pregnancy Status (NCHS)[2.16.840.1.114222.4.11.6003]](https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.6003)."
* ^status = #active
* ^experimental = false
* insert SNOMEDCopyright
* CodeSystemDeathPregnancyStatusVitalRecords#1 "Not pregnant within past year"
* CodeSystemDeathPregnancyStatusVitalRecords#2 "Pregnant at time of death"
* CodeSystemDeathPregnancyStatusVitalRecords#3 "Not pregnant, but pregnant within 42 days of death"
* CodeSystemDeathPregnancyStatusVitalRecords#4 "Not pregnant, but pregnant 43 days to 1 year before death"
* CodeSystemDeathPregnancyStatusVitalRecords#7 "Not reported on certificate"
* CodeSystemDeathPregnancyStatusVitalRecords#9 "Unknown if pregnant within the past year"
* $v3-NullFlavor#NA "Not applicable"