ValueSet: ValueSetStatesTerritoriesAndProvincesVitalRecords
Id: ValueSet-states-territories-provinces-vr
Title: "States, Territories and Provinces Value Set"
Description: "2 Letter States and Provinces Value Set"
* ^copyright = "The Canadian Province codesystem is copright Canada Health Infoway"
* ^status = #active
* ^experimental = false
//* insert USStatesAndTerritories
// * insert CanadaProvinces -- this doesn't work, don't be tempted
* codes from valueset ValueSetUSStatesAndTerritoriesVitalRecords
* codes from system CodeSystemCanadianProvincesVitalRecords
* $v3-NullFlavor#UNK