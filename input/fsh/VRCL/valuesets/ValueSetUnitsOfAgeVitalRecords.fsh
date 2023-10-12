ValueSet: ValueSetUnitsOfAgeVitalRecords
Id: ValueSet-units-of-age-vr
Title: "ValueSet - Units of Age Vital Records"
Description: "A set of codes for specifying the units used when recording age (days, years, etc.)."
* ^status = #active
* ^experimental = false
* $unitsofmeasure#min "Minutes"
* $unitsofmeasure#d "Days"
* $unitsofmeasure#h "Hours"
* $unitsofmeasure#mo "Months"
* $unitsofmeasure#a "Years"
* $v3-NullFlavor#UNK "unknown"