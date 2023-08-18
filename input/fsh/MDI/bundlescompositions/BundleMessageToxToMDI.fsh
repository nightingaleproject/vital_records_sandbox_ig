// unchanged in harmonization

Profile: BundleMessageToxToMDI
Parent: Bundle
Id: Bundle-message-tox-to-mdi
Title: "Bundle - Message Toxicology to MDI"
Description: "This Bundle profile represents a Message Bundle from a forensic toxicology laboratory to an MDI CMS. It contains a Message Header and a DiagnosticReport - Toxicology Lab Result to MDI."
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2023-06-28T21:46:13.212Z"
* type = #message (exactly)
* type MS
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains ToxtoMDIMessage 1..1 MS
* entry[ToxtoMDIMessage].resource 1..
* entry[ToxtoMDIMessage].resource only MessageHeaderToxicologyToMDI