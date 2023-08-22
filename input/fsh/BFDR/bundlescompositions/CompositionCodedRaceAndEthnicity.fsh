Profile: CompositionCodedRaceAndEthnicityNew
Parent: Composition
Id: Composition-coded-race-and-ethnicity
Title: "Composition - Coded Race and Ethnicity"
Description: "This profile communicates coded race and ethnicity information to the appropriate jurisdictional Vital Records Office."
* ^meta.versionId = "48"
* ^meta.lastUpdated = "2023-04-25T05:58:07.505+00:00"
* ^meta.source = "#2KWIwNYbZY7yxG9i"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* extension 1..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* extension contains
    ExtensionFetalDeathReportNumber named fetalDeathReportNumber 0..1 and
    ExtensionLiveBirthCertificateNumber named liveBirthCertificateNumber 0..1
* type = $loinc#86805-9
* type 
  * ^short = "Race and ethnicity information Document"
  * ^definition = "Race and ethnicity information Document"
* subject 1.. 
* subject only Reference(PatientChildNew or PatientDecedentFetusNew)
* author ..1 
  * ^short = "The author is the NCHS."
  * ^definition = "The author is the NCHS."
* section 2..2 
  * ^short = "Coded race and ethnicity section."
  * ^definition = "This section contains the tabulated and post-edited coded race and ethnicity details for the mother or father."
  * code = $loinc#86805-9
    * ^short = "Race and ethnicity information Document"
  * focus 1.. 
  * focus only Reference(PatientMotherNew or $RelatedPerson-father-natural-vr)
    * ^short = "The focus of this section is the mother or father"
    * ^definition = "The subject of the composition as a whole is the newborn baby or decedent fetus. The focus of this section in the composition is the mother or father."
  * entry 
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Coded Race and Ethnicity section"
    * ^definition = "Entries that are contained in the Coded Race and Ethnicity section"
  * entry contains
      race 1..1  and
      tabulatedEthnicity 1..1 
  * entry[race] only Reference($Observation-race-vr)
    * ^short = "Bridged race"
    * ^definition = "The mother or father's bridged race"
  * entry[tabulatedEthnicity] only Reference($Observation-tabulated-ethnicity-vr)
    * ^short = "Tabulated ethnicity"
    * ^definition = "The mother or father's tabulated ethnicity"