Profile: BundleDocumentMDIToEDRS
Parent: Bundle
Id: Bundle-document-mdi-to-edrs
Title: "Bundle - Document MDI to EDRS"
Description: "This Bundle profile represents a Document Bundle exchanged between an MDI CMS and EDRS. It can be used for bi-directional exchange. It contains a Composition - MDI to EDRS."
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2023-06-29T18:26:44.278Z"
* ^version = "0.0.1"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* identifier 1.. MS
  * ^short = "Persistent, unique identifier of each bundle instance"
* type = #document (exactly)
* type MS
* entry MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains MDItoEDRSComposition 1..1 MS
* entry[MDItoEDRSComposition] ^short = "The Composition of data sent from an MDI information management system to an EDRS"
  * resource 1.. MS
  * resource only CompositionMDIToEDRSNew