CodeSystem: EditFlagsCS
Id: CodeSystem-vr-edit-flags
Title: "CodeSystem - Birth and Death Financial Class"
Description: "This code system contains codes to represent all edit flags"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #off "Off" //PHC1380
* #correctOutOfRange "Queried data correct, out of range" //PHC1491
* #failedBirthWeightGestationEdit "Queried, failed birthweight/gestation edit"
* #editBypass0 "Edit Passed" //PHC1362
* #editBypass1 "Edit Failed, Data Queried, and Verified" //PHC1363
* #editBypass2 "Edit Failed, Data Queried, but not Verified" //PHC1364 
* #editBypass3 "Edit Failed, Review Needed" //PHC1366
* #editBypass4 "Edit Failed, Query Needed" //PHC1365
* #dataQueried "Data queried" //PHC2143
* #failedVerified "Edit Failed, Verified" //PHC1492
* #pluralityQueriedInconsistent "Plurality/Set Order Queried, Inconsistent" //PHC1495
* #queriedCorrect "Queried, and Correct" //PHC1494

* #DEducBypass0 "Decedents Education - Edit Passed"
* #DEducBypass1 "Decedents Education - Edit Failed, Data Queried, and Verified" 
* #DEducBypass2 "Decedents Education - Edit Failed, Data Queried, but not Verified"
* #DEducBypass3 "Decedents Education - Edit Failed, Review Needed"
* #DEducBypass4 "Decedents Education - Edit Failed, Query Needed"
* #sexBypass0 "Sex - Edit Passed"
* #sexBypass1 "Sex - Edit Failed, Data Queried, and Verified"
* #ageBypass0 "Age - Edit Passed"
* #ageBypass1 "Age - Edit Failed, Data Queried, and Verified"
* #maritalBypass0 "Marital - Edit Passed"
* #maritalBypass1 "Marital - Edit Failed, Data Queried, and Verified"
* #maritalBypass2 "Marital - Edit Failed, Data Queried, but not Verified"
* #maritalBypass4 "Marital - Edit Failed, Query Needed"
* #MAgeBypass0 "Mothers Age - Edit Passed"
* #MAgeAgeBypass1 "Mothers Age - Data Queried"
* #FAgeBypass0 "Fathers Age - Edit Passed" //PHC1362
* #FAgeBypass1 "Fathers Age - Data Queried" //PHC2143
* #MEducBypass0 "Mothers Education - Edit Passed"
* #MEducBypass1 "Mothers Education - Edit Failed, Data Queried and Verified"
* #MEducBypass2 "Mothers Education - Edit Failed, Data Queried, but not Verified" 
* #FEducBypass0 "Fathers Education - Edit Passed"
* #FEducBypass1 "Fathers Education - Edit Failed, Data Queried and Verified"
* #FEducBypass2 "Fathers Education - Edit Failed, Data Queried, but not Verified" 
* #NPrevBypass0 "Number of Prenatal Care Visits - Edit Passed"
* #NPrevBypass1 "Number of Prenatal Care Visits - Edit Failed, Number Verified"
* #NPrevBypass2 "Number of Prenatal Care Visits - Edit Failed, Number not Verified"
* #HGTBypass0 "Mothers Height - Edit Passed"
* #HGTBypass1 "Mothers Height - Edit Failed, Number Verified"
* #HGTBypass2 "Mothers Height - Edit Failed, Number not Verified"
* #PWGTBypass0 "Mothers Prepregnancy Weight - Edit Passed"
* #PWGTBypass1 "Mothers Prepregnancy Weight - Edit Failed, Number Verified"
* #PWGTBypass2 "Mothers Prepregnancy Weight - Edit Failed, Number not Verified"
* #DWGTBypass0 "Mothers Delivery Weight - Edit Passed"
* #DWGTBypass1 "Mothers Delivery Weight - Edit Failed, Number Verified"
* #DWGTBypass2 "Mothers Delivery Weight - Edit Failed, Number not Verified"
* #NPCesBypass0 "Number of Previous Cesareans - Edit Passed"
* #NPCesBypass1 "Number of Previous Cesareans - Edit Failed, Verified"
* #birthweightBypass0 "Birthweight - Off"
* #birthweightBypass1 "Birthweight - Queried data correct, out of range"
* #birthweightBypass2 "Birthweight - Queried, failed birthweight/gestation edit"
* #OWGestBypass0 "Obstetric Estimation of Gestation - Off"
* #OWGestBypass1 "Obstetric Estimation of Gestation - Queried data correct, out of range"
* #pluralityBypass0 "Plurality - Off"
* #pluralityBypass1 "Plurality - Queried, and Correct"
* #pluralityBypass2 "Plurality - Plurality/Set Order Queried, Inconsistent"
* #fetalWeightBypass0 "Weight of Fetus - Off"
* #fetalWeightBypass1 "Weight of Fetus - Queried data correct, out of range"
* #fetalWeightBypass2 "Weight of Fetus - Queried, failed delivery weight/gestation edit"
* #pregnancyReportBypass0 "Pregnancy Report - Edit Passed"
* #pregnancyReportBypass1 "Pregnancy Report - Edit Failed, Data Queried, and Verified"
* #pregnancyReportBypass2 "Pregnancy Report - Edit Failed, Data Queried, but not Verified"
