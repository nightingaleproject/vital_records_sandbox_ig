Profile: ObservationDrugUseDuringPregnancy
Parent: Observation
Id: Observation-drug-use-during-pregnancy
Title: "Observation - Drug Use During Pregnancy"
Description: "This profile represents maternal drug use during pregnancy."
* code = $loinc#89495-6
* code MS
  * ^short = "Drug use by Mother --during pregnancy"
* subject 1.. MS
* subject only Reference(PatientMotherVitalRecords)
* effective[x] only dateTime
* effective[x] MS
  * ^short = "Observation date (date on which the observation was reported to the provider)."
  * ^definition = "The date on which the observation was made/reported to the provider for recording in the EHR."
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert obscodecomponent(Amphetamines,YesNoUnknownVS)
* insert obscodecomponent(Heroin,YesNoUnknownVS)
* insert obscodecomponent(Methadone,YesNoUnknownVS)
* insert obscodecomponent(Marijuana,YesNoUnknownVS)
* insert obscodecomponent(Cocaine,YesNoUnknownVS)
* insert obscodecomponent(OtherDrugs,YesNoUnknownVS)