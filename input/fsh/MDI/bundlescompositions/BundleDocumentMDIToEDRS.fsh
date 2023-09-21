Profile: BundleDocumentMDIToEDRS
Parent: Bundle
Id: Bundle-document-mdi-to-edrs
Title: "Bundle - Document MDI to EDRS"
Description: "This Bundle profile represents an MDI to EDRS Document Bundle. It contains a Composition - MDI to EDRS."
* identifier 1.. MS
  * ^short = "MDI to EDRS Document Bundle identifier"
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