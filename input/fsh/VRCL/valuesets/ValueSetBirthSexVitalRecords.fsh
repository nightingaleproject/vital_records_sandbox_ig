ValueSet: ValueSetBirthSexVitalRecords
Id: ValueSet-birth-sex-vr
Title: "ValueSet - Birth Sex Vital Records"
Description: "This value set contains the subset of the US Core Birth Sex Valueset that can be used for Vital Records."
* ^status = #active
* ^experimental = false
* include codes from valueset BirthSex
* exclude $v3-AdministrativeGender#ASKU "asked but unknown"
* exclude $v3-NullFlavor#OTH "other"

