Profile: BundleDocumentMDIToEDRS
Parent: Bundle
Id: Bundle-document-mdi-to-edrs
Title: "Bundle - Document MDI to EDRS"
Description: "This Bundle profile represents a Document Bundle exchanged between an MDI CMS and EDRS. It can be used for bi-directional exchange. It contains a Composition - MDI to EDRS."
* identifier 1.. 
  * ^short = "Persistent, unique identifier of each bundle instance"
* type = #document (exactly)
* type 
* entry 
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains MDItoEDRSComposition 1..1 
* entry[MDItoEDRSComposition] ^short = "The Composition of data sent from an MDI information management system to an EDRS"
  * resource 1.. 
  * resource only CompositionMDIToEDRS